
import 'package:flutter/material.dart';

class ItrFilteringScreen extends StatelessWidget {
  const ItrFilteringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'ITR Filing',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            elevation: 0,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Column(
            children: [
              // Image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/filterimage.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Toggle buttons (checkbox style)
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

              const SizedBox(height: 12),

              // Buttons Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: const Color.fromARGB(255, 225, 224, 224)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download,
                              color: Color(0xFF124D91)),
                          label: const Text(
                            'Download',
                            style: TextStyle(
                              color: Color(0xFF124D91),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      // Center round icon
                      Container(
                        width: 44,
                        height: 44,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: const BoxDecoration(
                          color: Color(0xFF124D91),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.compare_arrows,
                            color: Colors.white),
                      ),

                      Flexible(
                        flex: 4,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.share, color: Color(0xFFE86F22)),
                          label: const Text(
                            'Share',
                            style: TextStyle(
                              color: Color(0xFFE86F22),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
