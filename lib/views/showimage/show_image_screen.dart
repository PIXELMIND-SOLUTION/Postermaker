import 'package:flutter/material.dart';

class ShowImageScreen extends StatelessWidget {
  const ShowImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),

                  Row(
                    children: [
                      // Share button
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: IconButton(
                          onPressed: () {
                            // Handle share
                          },
                          icon: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0064B7),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),

                      // Download button
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: IconButton(
                          onPressed: () {
                            // Handle download
                          },
                          icon: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0064B7),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Image Preview Centered
            Expanded(
              child: Center(
                child: Container(
                  color: const Color(0xFFBCA7CC), // Purple background
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    'lib/assets/76add784ea67adbc396d4611126891d6350a6a13.png', // Replace with your image path or use Image.file / Image.network
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Bottom Black Control Panel
            Container(
              height: 70,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _BottomButton(icon: Icons.add, label: "Upload Image"),
                  _BottomButton(icon: Icons.tune, label: "Filter"),
                  _BottomButton(icon: Icons.animation, label: "Animation"),
                  _BottomButton(icon: Icons.volume_up, label: "Audio"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _BottomButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 20, color: Colors.white),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
