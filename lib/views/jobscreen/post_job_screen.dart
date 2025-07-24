import 'package:flutter/material.dart';

class PostJobScreen extends StatelessWidget {
  const PostJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Post a New Job',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField(label: 'Job Title'),
            const SizedBox(height: 12),
            _buildTextField(
              label: 'Location',
              suffixIcon: const Icon(Icons.keyboard_arrow_down),
            ),
            const SizedBox(height: 12),
            _buildTextField(
              label: 'Employment Type',
              maxLines: 4,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: _buildTextField(label: 'Salary')),
                const SizedBox(width: 12),
                Expanded(child: _buildTextField(label: 'Experience')),
              ],
            ),
            const SizedBox(height: 12),
            _buildTextField(label: 'Skills'),
            const SizedBox(height: 12),
            _buildTextField(label: 'Company Name'),
            const SizedBox(height: 12),
            _buildTextField(label: 'Application Email'),
            const SizedBox(height: 16),

            // Upload Logo
            GestureDetector(
              onTap: () {
                // Add image picker logic here
              },
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.upload_file, size: 30, color: Colors.black54),
                    SizedBox(height: 8),
                    Text(
                      'Upload Logo',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Post Now Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 44, 68, 88),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  // Add submission logic
                },
                child: const Text(
                  'Post Now',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    Widget? suffixIcon,
    int maxLines = 1,
  }) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      ),
    );
  }
}
