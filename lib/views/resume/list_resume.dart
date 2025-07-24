import 'package:flutter/material.dart';
import 'package:poster_maker/views/resume/upload_resume.dart';

class ListResume extends StatelessWidget {
  const ListResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Upload Resume',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadResume()));
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFFF1F1F1),
                      child: Icon(Icons.add_a_photo_outlined, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Upload Logo',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF175889),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Save',
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
