import 'package:flutter/material.dart';
import 'package:poster_maker/views/ITR%20filtering/itr_filtering_screen.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, size: 18),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(width: 4),
            const Text(
              'Today',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 16),
            // Container(
            //   padding: const EdgeInsets.all(12),
            //   decoration: BoxDecoration(
            //     color: Colors.grey[200],
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: const Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Image(image: AssetImage('lib/assets/26b087e4b9f99b100a6805b745628975ecd5a448.png')),
            //       Text(
            //         'Ugadi Offer Female English...',
            //         style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.black,
            //         ),
            //       ),
            //       SizedBox(height: 4),
            //       Text(
            //         'ENZER HEPTEL/IBRIDA/IPJL-26',
            //         style: TextStyle(
            //           fontSize: 14,
            //           color: Colors.grey,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ItrFilteringScreen()));
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 37, 94, 141), // Change background color to blue
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'lib/assets/26b087e4b9f99b100a6805b745628975ecd5a448.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              Text(
                'Ugadi Offer Female English...',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color changed for blue background
                ),
              ),
              SizedBox(height: 4),
              Text(
                'ENZERHEPTELIBRIDAIPJL26',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}