import 'package:flutter/material.dart';

class AddChecklist extends StatelessWidget {
  const AddChecklist({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Check list',style: TextStyle(fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
        
                ),
                labelText: 'Enter Name',
                hintText: 'Name'
        
              ),
            ),
            SizedBox(height: 25,),
             TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
        
                ),
                labelText: 'Enter Address',
                hintText: 'Address'
        
              ),
            ),
            SizedBox(height: 25,),
             TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
        
                ),
                suffixIcon: Icon(Icons.keyboard_arrow_down,size: 29,),
                labelText: 'Enter Service',
                hintText: 'Service'
        
              ),
              
            ),
            

            const Expanded(child: SizedBox()),
          
          // Bottom button
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddChecklist()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4A90E2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                elevation: 0,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   Icons.add,
                  //   color: Colors.white,
                  //   size: 20,
                  // ),
                  SizedBox(width: 8),
                  Text(
                    'Preview',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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