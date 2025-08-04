import 'package:flutter/material.dart';

class CricketDetailScreen extends StatelessWidget {
  const CricketDetailScreen({super.key});

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
              'Back',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
             leading: IconButton(onPressed: (){
              Navigator.of(context).pop();
             }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              // Article Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'lib/assets/e3dcbf8c7dd52f6a1d85958e95f924690784c84a.png', // Replace with your image
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              // Author and Share Icon Row
              Row(
                children: [
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('lib/assets/f36d23db3302bf7b63821ceab64a3a8adbf8c000.jpg'), // Replace with your image
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'Anushka jaan\n8 min read. Updated: 12 Jun 2024, 11:38 PM IST',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.share, size: 20),
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Title
              const Text(
                "India vs USA Highlights: Suryakumar Yadav’s stunning half-century lead IND to T20 World Cup 2024 Super 8 stage",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 12),

              // Description
              const Text(
                "India vs USA Live Score: United States just missed a big wicket as Saurabh Netrawalkar dropped Suryakumar Yadav, and this can turn very costly as SKY has been one of the most aggressive players in T20 cricket. India vs USA Live Score Updates: United States’ Saurabh Netrawalkar celebrates the dismissal of India’s Virat Kohli during the ICC Men’s T20 World Cup cricket match between United States and India at the Nassau County International Cricket Stadium in Westbury, New York (AP).",
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
