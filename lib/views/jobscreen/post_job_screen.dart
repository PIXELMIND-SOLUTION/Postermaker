import 'package:flutter/material.dart';

class PostJobScreen extends StatelessWidget {
  const PostJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: AppBar(
            backgroundColor: const Color(0xFF175889),
            title: const Text(
              'Post a New job',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
             leading: IconButton(onPressed: (){
              Navigator.of(context).pop();
             }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
            elevation: 0,
          ),
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
           

            // Upload Logo
         

            const SizedBox(height: 270),

            // Post Now Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF175889),
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
