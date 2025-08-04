import 'package:flutter/material.dart';
import 'package:poster_maker/views/checklist/add_checklist.dart';

class CheckListScreen extends StatelessWidget {
  const CheckListScreen({super.key});

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
              'History',
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
      body: Column(
        children: [
          // List item
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color.fromARGB(255, 101, 101, 101)!),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'ITR FLINING',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
                
                Column(
                  children: [
                    Text(
                      'Invoice Date',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    
                    const SizedBox(width: 8),
                     Text(
                      '09/05/2025',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                      ),
                    ),
                    // Icon(
                    //   Icons.arrow_forward_ios,
                    //   color: Colors.grey[400],
                    //   size: 16,
                    // ),
                   
                  ],
                ),
                Column(
                  children: [
                    // Text(
                    //   '09/05/2025',
                    //   style: TextStyle(
                    //     fontSize: 12,
                    //     color: Colors.grey[500],
                    //   ),
                    // ),
                    
                    const SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 16,
                    ),
                   
                  ],
                ),
               
              ],
            ),
          ),
          
          // Empty space
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
                backgroundColor: const Color(0xFF175889),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                elevation: 0,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Create New Checklist',
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
    );
  }
}