// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/Notifications/notification_screen.dart';
// import 'package:poster_maker/views/checklist/check_list_screen.dart';
// import 'package:poster_maker/views/dates/date_screen.dart';
// import 'package:poster_maker/views/invoices/list_invoice.dart';
// import 'package:poster_maker/views/profile/profile_screen.dart';
// import 'package:poster_maker/views/widgets/carousel_slider_widget.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0),
//           child: ListView(
//             children: [
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ProfileScreen()));
//                     },
//                     child: const CircleAvatar(
//                       radius: 22,
//                       backgroundImage:
//                           AssetImage('lib/assets/profileimage.png'),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   const Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('PMS Software',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 16)),
//                       Text('chartered accountant',
//                           style: TextStyle(color: Colors.grey)),
//                     ],
//                   ),
//                   const Spacer(),
//                   Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.grey)),
//                       child: const Icon(Icons.share)),
//                   const SizedBox(width: 10),
//                   GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => NotificationScreen()));
//                       },
//                       child: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(color: Colors.grey)),
//                           child: const Icon(Icons.notifications_none))),
//                 ],
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 child: Image.asset('lib/assets/homepageimage.png'),
//               ),
//               // const TextField(
//               //   decoration: InputDecoration(
//               //     hintText: 'Search',
//               //     prefixIcon: Icon(Icons.search),
//               //     border: OutlineInputBorder(
//               //       borderRadius: BorderRadius.all(Radius.circular(25)),
//               //       borderSide: BorderSide.none,
//               //     ),
//               //     filled: true,
//               //     fillColor: Color.fromARGB(255, 247, 247, 248),
//               //   ),
//               // ),
//               const SizedBox(height: 12),
//               const CarouselSliderWidget(),
//               const SizedBox(height: 12),

//               const SizedBox(height: 15),
//               const Text('Due Dates',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//               const SizedBox(height: 12),

//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const DateScreen()));
//                     },
//                     child: _buildDueDateButton(
//                       'Today',
//                       Image.asset(
//                         'lib/assets/61b63d6794575f73d1e67ba07128b9f11bcc23a5.png',
//                         height: 24,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   GestureDetector(
//                     onTap: () {
//                       // Handle This Month
//                     },
//                     child: _buildDueDateButton(
//                       'This Month',
//                       Image.asset(
//                         'lib/assets/d704556722074e2fdbe62bc3804c56e5aecbe5e1.png',
//                         height: 24,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   GestureDetector(
//                     onTap: () {
//                       // Handle Next Month
//                     },
//                     child: _buildDueDateButton(
//                       'Next Month',
//                       Image.asset(
//                         'lib/assets/81af09f1fe4bc17b79a2e87020fbdf6f1ef2c170.png',
//                         height: 24,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               const Text('Categories',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//               const SizedBox(height: 20),

//               // Updated section using Wrap
//               Wrap(
//                 spacing: 12,
//                 runSpacing: 12,
//                 children: [
//                   _buildCategoryButton(
//                     'Tax Updates',
//                     Image.asset(
//                       'lib/assets/cb903808f3f60facbc250eb9f54e727c7577b289.png',
//                       height: 28,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   _buildCategoryButton(
//                     'Case Laws',
//                     Image.asset(
//                       'lib/assets/caselawsimage.png',
//                       height: 28,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   _buildCategoryButton(
//                     'Utility Posters',
//                     Image.asset(
//                       'lib/assets/6c6c6343ca690c4d14f56b1e483bcd60f5649a64.png',
//                       height: 28,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   _buildCategoryButton(
//                     'Weekly',
//                     Image.asset(
//                       'lib/assets/513b1ecdd830e97851d0152741a05eb3aa0855b6.png',
//                       height: 28,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   _buildCategoryButton(
//                     'Monthly',
//                     Image.asset(
//                       'lib/assets/7e346b2fae56d04aa3078b5bb90db53cb96eb99d.png',
//                       height: 28,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   _buildCategoryButton(
//                     'Festivals',
//                     Image.asset(
//                       'lib/assets/1a8cc587f279c691a70117a39cf2d56631d17534.png',
//                       height: 28,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => CheckListScreen()));
//                     },
//                     child: _buildCategoryButton(
//                       'Check List',
//                       Image.asset(
//                         'lib/assets/24ab8e9b40b6fdd03b72fa01ed82c1bcc246e14f.png',
//                         height: 28,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ListInvoiceScreen()));
//                     },
//                     child: _buildCategoryButton(
//                       'Get Invoice',
//                       Image.asset(
//                         'lib/assets/homescreenimage.png',
//                         height: 28,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   static Widget _buildDueDateButton(String label, Image image) {
//     return SizedBox(
//       width: 72, // Adjust for tighter 4-column layout
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: const Color.fromARGB(221, 187, 186, 186)),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               blurRadius: 4,
//               spreadRadius: 1,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 20,
//               backgroundColor: Color(0xFF175889),
//               child: Padding(
//                 padding: const EdgeInsets.all(6.0),
//                 child: image,
//               ),
//             ),
//             const SizedBox(height: 6),
//             Text(
//               label,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   static Widget _buildCategoryButton(String label, Image image) {
//     return SizedBox(
//       width: 75, // Adjust for tighter 4-column layout
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: const Color.fromARGB(221, 187, 186, 186)),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               blurRadius: 4,
//               spreadRadius: 1,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 20,
//               backgroundColor: Color(0xFF175889),
//               child: Padding(
//                 padding: const EdgeInsets.all(6.0),
//                 child: image,
//               ),
//             ),
//             const SizedBox(height: 6),
//             Text(
//               label,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:poster_maker/views/Notifications/notification_screen.dart';
import 'package:poster_maker/views/checklist/check_list_screen.dart';
import 'package:poster_maker/views/dates/date_screen.dart';
import 'package:poster_maker/views/invoices/list_invoice.dart';
import 'package:poster_maker/views/profile/profile_screen.dart';
import 'package:poster_maker/views/widgets/carousel_slider_widget.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Method to launch WhatsApp
  Future<void> _launchWhatsApp() async {
    const phoneNumber = '+1234567890'; // Replace with your phone number
    const message =
        'Hello! I would like to inquire about your services.'; // Default message

    // WhatsApp URL scheme
    final whatsappUrl = Uri.parse(
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');

    try {
      if (await canLaunchUrl(whatsappUrl)) {
        await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
      } else {
        // If WhatsApp is not installed, open web version
        final webWhatsappUrl = Uri.parse(
            'https://web.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}');
        await launchUrl(webWhatsappUrl, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      print('Error launching WhatsApp: $e');
    }
  }

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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: const CircleAvatar(
                      radius: 22,
                      backgroundImage:
                          AssetImage('lib/assets/profileimage.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PMS Software',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('chartered accountant',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey)),
                      child: const Icon(Icons.share)),
                  const SizedBox(width: 10),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey)),
                          child: const Icon(Icons.notifications_none))),
                ],
              ),
              const SizedBox(height: 15),

              GestureDetector(
                onTap: _launchWhatsApp,
                child: Container(
                
                  height: 70,
                  // width: 90,
                  // margin:
                  //     const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF155489),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF155489).withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Left Side: Premium Icon + Text
                      Row(
                        children: [
                          Image.asset(
                            'lib/assets/premiumimage.png',
                            width: 36,
                            height: 36,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Upgrade to Progress',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Premium',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Right Side: WhatsApp Button
                      Row(
                        children: [
                          Image.asset(
                            'lib/assets/whatsppimage.png',
                            width: 98,
                            height: 90,
                          ),
                          const SizedBox(width: 6),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),
              const CarouselSliderWidget(),
              const SizedBox(height: 12),

              const SizedBox(height: 15),
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
                        'lib/assets/61b63d6794575f73d1e67ba07128b9f11bcc23a5.png',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckListScreen()));
                    },
                    child: _buildCategoryButton(
                      'Check List',
                      Image.asset(
                        'lib/assets/24ab8e9b40b6fdd03b72fa01ed82c1bcc246e14f.png',
                        height: 28,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListInvoiceScreen()));
                    },
                    child: _buildCategoryButton(
                      'Get Invoice',
                      Image.asset(
                        'lib/assets/homescreenimage.png',
                        height: 28,
                        fit: BoxFit.contain,
                      ),
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

  static Widget _buildCategoryButton(String label, Image image) {
    return SizedBox(
      width: 75, // Adjust for tighter 4-column layout
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
