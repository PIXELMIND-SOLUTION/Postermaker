import 'package:flutter/material.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Job Details',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Job title and company
            Row(
              children: [
                Image.asset('lib/assets/companyLogo.png',width: 60,height: 60,),
             
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Highspeed Studios',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Senior Software\nEngineer',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            // Job type tags
            Row(
              children: [
                _jobTypeChip('Fulltime'),
                _jobTypeChip('Remote Working'),
                _jobTypeChip('Hourly'),
              ],
            ),
            const SizedBox(height: 24),
            // Salary section
            // Row(
            //   children: const [
            //     Text('Salary'),
            //     Icon(Icons.wallet, color: Colors.purple),
            //     SizedBox(width: 8),
            //     Text(
            //       '₹50,000 - ₹100,000/monthly',
            //       style: TextStyle(fontSize: 15),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 16),
            // // Location section
            // Row(
            //   children: const [
            //     Text('Location'),
            //     Icon(Icons.location_on, color: Colors.purple),
            //     SizedBox(width: 8),
            //     Text(
            //       'Medan, Indonesia',
            //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            // Salary section
Row(
  children: [
    CircleAvatar(
      radius: 16,
      backgroundColor: const Color(0xFFEFE9FF),
      child: Image.asset(
        'lib/assets/coinsimage.png', // <- Replace with your correct local path
        width: 18,
        height: 18,
      ),
    ),
    const SizedBox(width: 12),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Salary',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          '₹50,000 – ₹100,000/monthly',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ],
),
const SizedBox(height: 16),
// Location section
Row(
  children: [
    CircleAvatar(
      radius: 16,
      backgroundColor: const Color(0xFFEFE9FF),
      child: Image.asset(
        'lib/assets/bagimage.png', // <- Replace with your correct local path
        width: 18,
        height: 18,
      ),
    ),
    const SizedBox(width: 12),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Location',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          'Medan, Indonesia',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ],
),

            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 12),
            const Text(
              'Job Description',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 12),
            const _BulletPoint(text: 'Sed ut perspiciatis unde omnis'),
            const _BulletPoint(text: 'Doloremque laudantium'),
            const _BulletPoint(text: 'Ipsa quae ab illo inventore'),
            const _BulletPoint(text: 'Architecto beatae vitae dicta'),
            const _BulletPoint(text: 'Sunt explicabo'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF175889),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Apply Now',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _jobTypeChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFF175889),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}

class _BulletPoint extends StatelessWidget {
  final String text;

  const _BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.blue, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
