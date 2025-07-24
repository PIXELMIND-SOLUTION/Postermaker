import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poster_maker/views/Notifications/notification_screen.dart';
import 'package:poster_maker/views/dates/date_screen.dart';
import 'package:poster_maker/views/profile/profile_screen.dart';
import 'package:poster_maker/views/widgets/carousel_slider_widget.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle button press
                    },
                    icon: const CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('lib/assets/whatspplogo.png'),
                    ),
                    label: const Text(
                      'Whatsapp',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF195D88), // Dark blue background
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      elevation: 0,
                    ),
                  ),

                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => ProfileScreen()));
                  //   },
                  //   child: const CircleAvatar(
                  //     radius: 22,
                  //     backgroundImage: AssetImage('lib/assets/profileimage.png'),
                  //   ),
                  // ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text('PMS Software',
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold, fontSize: 16)),
                      // Text('Hyderabad', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.share),
                  const SizedBox(width: 10),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                      },
                      child: const Icon(Icons.notifications_none)),
                ],
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF1F3F4),
                ),
              ),
              const SizedBox(height: 12),
              const CarouselSliderWidget(),
              const SizedBox(height: 25),
              const Text('Due Dates',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 12),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DateScreen()));
                    },
                    child: _buildDueDateButton(
                      'Today',
                      Image.asset(
                        'lib/assets/97f81f58c66dee7d6b13782998dfdb35a8f497e2.png',
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Handle This Month
                    },
                    child: _buildDueDateButton(
                      'This Month',
                      Image.asset(
                        'lib/assets/d704556722074e2fdbe62bc3804c56e5aecbe5e1.png',
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Handle Next Month
                    },
                    child: _buildDueDateButton(
                      'Next Month',
                      Image.asset(
                        'lib/assets/81af09f1fe4bc17b79a2e87020fbdf6f1ef2c170.png',
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 20),

              // Updated section using Wrap
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildCategoryButton(
                    'Tax Updates',
                    Image.asset(
                      'lib/assets/cb903808f3f60facbc250eb9f54e727c7577b289.png',
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                  _buildCategoryButton(
                    'Case Laws',
                    Image.asset(
                      'lib/assets/caselawsimage.png',
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                  _buildCategoryButton(
                    'Utility Posters',
                    Image.asset(
                      'lib/assets/6c6c6343ca690c4d14f56b1e483bcd60f5649a64.png',
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                  _buildCategoryButton(
                    'Weekly',
                    Image.asset(
                      'lib/assets/513b1ecdd830e97851d0152741a05eb3aa0855b6.png',
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                  _buildCategoryButton(
                    'Monthly',
                    Image.asset(
                      'lib/assets/7e346b2fae56d04aa3078b5bb90db53cb96eb99d.png',
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                  _buildCategoryButton(
                    'Festivals',
                    Image.asset(
                      'lib/assets/1a8cc587f279c691a70117a39cf2d56631d17534.png',
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


static Widget _buildDueDateButton(String label, Image image) {
    return SizedBox(
      width: 72, // Adjust for tighter 4-column layout
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color.fromARGB(221, 187, 186, 186)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF175889),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: image,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
  // static Widget _buildDueDateButton(String label, Image iconImage) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 12),
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(12),
  //       border: Border.all(color: const Color.fromARGB(255, 179, 179, 179)),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.2),
  //           blurRadius: 4,
  //           spreadRadius: 1,
  //           offset: const Offset(0, 2),
  //         ),
  //       ],
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         CircleAvatar(
  //           radius: 20,
  //           backgroundColor: Color(0xFF175889),
  //           child: Padding(
  //             padding: const EdgeInsets.all(6.0),
  //             child: iconImage,
  //           ),
  //         ),
  //         const SizedBox(height: 6),
  //         Text(
  //           label,
  //           textAlign: TextAlign.center,
  //           style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  static Widget _buildCategoryButton(String label, Image image) {
    return SizedBox(
      width: 72, // Adjust for tighter 4-column layout
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color.fromARGB(221, 187, 186, 186)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF175889),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: image,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
