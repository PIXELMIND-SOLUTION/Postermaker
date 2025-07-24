import 'package:flutter/material.dart';

class ItrFilteringScreen extends StatelessWidget {
  const ItrFilteringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ITR Filing',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          // Image area
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                    'lib/assets/filterimage.png'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 20),

          // Checkboxes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: (_) {}),
                      const Text("Image"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: (_) {}),
                      const Text("Animation"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
         
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
            
                    },
                    icon: const Icon(Icons.download, color: Colors.white),
                    label: const Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF124D91), 
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), 
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Share Button
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Share functionality
                    },
                    icon: const Icon(Icons.share, color: Colors.white),
                    label: const Text(
                      "Share",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE86F22), // Orange
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
