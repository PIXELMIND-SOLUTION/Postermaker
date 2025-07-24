import 'package:flutter/material.dart';

class UploadResume extends StatelessWidget {
  const UploadResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon:const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.white,
        elevation: 0,
        title:const  Text(
          'Upload Resume',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'lib/assets/7e4a33251703cf8232a72c48ada571d1470fbf27.png',
                fit: BoxFit.contain,
                
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
               
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF175889),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  'Reupload',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
