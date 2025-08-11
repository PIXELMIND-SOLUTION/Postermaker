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

// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/Notifications/notification_screen.dart';
// import 'package:poster_maker/views/checklist/check_list_screen.dart';
// import 'package:poster_maker/views/dates/date_screen.dart';
// import 'package:poster_maker/views/invoices/list_invoice.dart';
// import 'package:poster_maker/views/profile/profile_screen.dart';
// import 'package:poster_maker/views/widgets/carousel_slider_widget.dart';
// import 'package:url_launcher/url_launcher.dart'; // Add this import

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   // Method to launch WhatsApp
//   Future<void> _launchWhatsApp() async {
//     const phoneNumber = '+1234567890'; // Replace with your phone number
//     const message =
//         'Hello! I would like to inquire about your services.'; // Default message

//     // WhatsApp URL scheme
//     final whatsappUrl = Uri.parse(
//         'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');

//     try {
//       if (await canLaunchUrl(whatsappUrl)) {
//         await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
//       } else {
//         // If WhatsApp is not installed, open web version
//         final webWhatsappUrl = Uri.parse(
//             'https://web.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}');
//         await launchUrl(webWhatsappUrl, mode: LaunchMode.externalApplication);
//       }
//     } catch (e) {
//       print('Error launching WhatsApp: $e');
//     }
//   }

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

//               GestureDetector(
//                 onTap: _launchWhatsApp,
//                 child: Container(

//                   height: 70,
//                   // width: 90,
//                   // margin:
//                   //     const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF155489),
//                     borderRadius: BorderRadius.circular(16),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0xFF155489).withOpacity(0.3),
//                         blurRadius: 8,
//                         spreadRadius: 2,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Left Side: Premium Icon + Text
//                       Row(
//                         children: [
//                           Image.asset(
//                             'lib/assets/premiumimage.png',
//                             width: 36,
//                             height: 36,
//                           ),
//                           const SizedBox(width: 12),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 'Upgrade to Progress',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               Text(
//                                 'Premium',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),

//                       // Right Side: WhatsApp Button
//                       Row(
//                         children: [
//                           Image.asset(
//                             'lib/assets/whatsppimage.png',
//                             width: 98,
//                             height: 90,
//                           ),
//                           const SizedBox(width: 6),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

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






// import 'package:flutter/material.dart';
// import 'package:poster_maker/model/category_model.dart';
// import 'package:poster_maker/views/provider/category_provider.dart';
// import 'package:poster_maker/views/provider/date_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:poster_maker/views/Notifications/notification_screen.dart';
// import 'package:poster_maker/views/checklist/check_list_screen.dart';
// import 'package:poster_maker/views/dates/date_screen.dart';
// import 'package:poster_maker/views/invoices/list_invoice.dart';
// import 'package:poster_maker/views/profile/profile_screen.dart';
// import 'package:poster_maker/views/widgets/carousel_slider_widget.dart';
// import 'package:url_launcher/url_launcher.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Fetch categories when screen loads
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final categoryProvider =
//           Provider.of<CategoryProvider>(context, listen: false);

//       final dateProvider = Provider.of<DateProvider>(context, listen: false);

//       if (categoryProvider.shouldFetchCategories) {
//         categoryProvider.fetchCategories();
//       }

//       if (dateProvider.shouldFetchDates) {
//         dateProvider.fetchDueDates();
//       }
//     });
//   }

//   // Method to launch WhatsApp
//   Future<void> _launchWhatsApp() async {
//     const phoneNumber = '+1234567890'; // Replace with your phone number
//     const message = 'Hello! I would like to inquire about your services.';

//     final whatsappUrl = Uri.parse(
//         'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');

//     try {
//       if (await canLaunchUrl(whatsappUrl)) {
//         await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
//       } else {
//         final webWhatsappUrl = Uri.parse(
//             'https://web.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}');
//         await launchUrl(webWhatsappUrl, mode: LaunchMode.externalApplication);
//       }
//     } catch (e) {
//       print('Error launching WhatsApp: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0),
//           child: RefreshIndicator(
//            onRefresh: () async {
//               await Future.wait([
//                 Provider.of<CategoryProvider>(context, listen: false)
//                     .refreshCategories(),
//                 Provider.of<DateProvider>(context, listen: false)
//                     .refreshDueDates(),
//               ]);
//             },
//             child: ListView(
//               children: [
//                 const SizedBox(height: 10),
//                 Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProfileScreen()));
//                       },
//                       child: const CircleAvatar(
//                         radius: 22,
//                         backgroundImage:
//                             AssetImage('lib/assets/profileimage.png'),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('PMS Software',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16)),
//                         Text('chartered accountant',
//                             style: TextStyle(color: Colors.grey)),
//                       ],
//                     ),
//                     const Spacer(),
//                     Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(12),
//                             border: Border.all(color: Colors.grey)),
//                         child: const Icon(Icons.share)),
//                     const SizedBox(width: 10),
//                     GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => NotificationScreen()));
//                         },
//                         child: Container(
//                             height: 40,
//                             width: 40,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12),
//                                 border: Border.all(color: Colors.grey)),
//                             child: const Icon(Icons.notifications_none))),
//                   ],
//                 ),
//                 const SizedBox(height: 15),

//                 GestureDetector(
//                   onTap: _launchWhatsApp,
//                   child: Container(
//                     height: 70,
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF155489),
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0xFF155489).withOpacity(0.3),
//                           blurRadius: 8,
//                           spreadRadius: 2,
//                           offset: const Offset(0, 4),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Image.asset(
//                               'lib/assets/premiumimage.png',
//                               width: 36,
//                               height: 36,
//                             ),
//                             const SizedBox(width: 12),
//                             const Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Upgrade to Progress',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                                 Text(
//                                   'Premium',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Image.asset(
//                               'lib/assets/whatsppimage.png',
//                               width: 98,
//                               height: 90,
//                             ),
//                             const SizedBox(width: 6),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 12),
//                 const CarouselSliderWidget(),
//                 const SizedBox(height: 12),
//                 const SizedBox(height: 15),
//                 const Text('Due Dates',
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//                 const SizedBox(height: 12),

//                 Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const DateScreen()));
//                       },
//                       child: _buildDueDateButton(
//                         'Today',
//                         Image.asset(
//                           'lib/assets/61b63d6794575f73d1e67ba07128b9f11bcc23a5.png',
//                           height: 24,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     GestureDetector(
//                       onTap: () {
//                         // Handle This Month
//                       },
//                       child: _buildDueDateButton(
//                         'This Month',
//                         Image.asset(
//                           'lib/assets/d704556722074e2fdbe62bc3804c56e5aecbe5e1.png',
//                           height: 24,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     GestureDetector(
//                       onTap: () {
//                         // Handle Next Month
//                       },
//                       child: _buildDueDateButton(
//                         'Next Month',
//                         Image.asset(
//                           'lib/assets/81af09f1fe4bc17b79a2e87020fbdf6f1ef2c170.png',
//                           height: 24,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // Categories section with API integration
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text('Categories',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16)),
//                     Consumer<CategoryProvider>(
//                       builder: (context, categoryProvider, child) {
//                         if (categoryProvider.isLoading &&
//                             !categoryProvider.isRefreshing) {
//                           return const SizedBox(
//                             width: 16,
//                             height: 16,
//                             child: CircularProgressIndicator(strokeWidth: 2),
//                           );
//                         }
//                         return const SizedBox.shrink();
//                       },
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // Dynamic Categories from API
//                 Consumer<CategoryProvider>(
//                   builder: (context, categoryProvider, child) {
//                     if (categoryProvider.isLoading &&
//                         !categoryProvider.isRefreshing) {
//                       return _buildLoadingCategories();
//                     }

//                     if (categoryProvider.hasError) {
//                       return _buildErrorCategories(categoryProvider);
//                     }

//                     if (categoryProvider.hasData) {
//                       return _buildCategoriesGrid(categoryProvider.categories);
//                     }

//                     return _buildEmptyCategories();
//                   },
//                 ),

//                 // Static categories (keeping original ones as fallback)
//                 const SizedBox(height: 20),
//                 // const Text('Quick Actions',
//                 //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//                 // const SizedBox(height: 20),

//                 Wrap(
//                   spacing: 12,
//                   runSpacing: 12,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => CheckListScreen()));
//                       },
//                       child: _buildCategoryButton(
//                         'Check List',
//                         Image.asset(
//                           'lib/assets/24ab8e9b40b6fdd03b72fa01ed82c1bcc246e14f.png',
//                           height: 28,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ListInvoiceScreen()));
//                       },
//                       child: _buildCategoryButton(
//                         'Get Invoice',
//                         Image.asset(
//                           'lib/assets/homescreenimage.png',
//                           height: 28,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoriesGrid(List<Category> categories) {
//     return Wrap(
//       spacing: 12,
//       runSpacing: 12,
//       children: categories.map((category) {
//         return GestureDetector(
//           onTap: () {
//             // Handle category tap - navigate to category screen
//             print('Tapped on category: ${category.categoryName}');
//             // Navigator.push(context, MaterialPageRoute(...));
//           },
//           child: _buildApiCategoryButton(category),
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildApiCategoryButton(Category category) {
//     return SizedBox(
//       width: 75,
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
//               backgroundColor: const Color(0xFF175889),
//               child: Padding(
//                 padding: const EdgeInsets.all(6.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.network(
//                     category.imageUrl,
//                     height: 28,
//                     width: 28,
//                     fit: BoxFit.cover,
//                     loadingBuilder: (context, child, loadingProgress) {
//                       if (loadingProgress == null) return child;
//                       return const SizedBox(
//                         height: 28,
//                         width: 28,
//                         child: CircularProgressIndicator(
//                           strokeWidth: 2,
//                           color: Colors.white,
//                         ),
//                       );
//                     },
//                     errorBuilder: (context, error, stackTrace) {
//                       return const Icon(
//                         Icons.category,
//                         color: Colors.white,
//                         size: 20,
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 6),
//             Text(
//               category.categoryName,
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildLoadingCategories() {
//     return Wrap(
//       spacing: 12,
//       runSpacing: 12,
//       children: List.generate(6, (index) {
//         return SizedBox(
//           width: 75,
//           child: Container(
//             height: 80,
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: const Center(
//               child: CircularProgressIndicator(strokeWidth: 2),
//             ),
//           ),
//         );
//       }),
//     );
//   }

//   Widget _buildErrorCategories(CategoryProvider categoryProvider) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.red[50],
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.red[200]!),
//       ),
//       child: Column(
//         children: [
//           Icon(Icons.error_outline, color: Colors.red[400], size: 40),
//           const SizedBox(height: 10),
//           Text(
//             'Failed to load categories',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.red[700],
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             categoryProvider.errorMessage,
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.red[600], fontSize: 12),
//           ),
//           const SizedBox(height: 15),
//           ElevatedButton(
//             onPressed: () => categoryProvider.retryFetchCategories(),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.red[400],
//               foregroundColor: Colors.white,
//             ),
//             child: const Text('Retry'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildEmptyCategories() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         children: [
//           Icon(Icons.category_outlined, color: Colors.grey[400], size: 40),
//           const SizedBox(height: 10),
//           Text(
//             'No categories available',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.grey[600],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   static Widget _buildDueDateButton(String label, Image image) {
//     return SizedBox(
//       width: 72,
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
//               backgroundColor: const Color(0xFF175889),
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
//       width: 75,
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
//               backgroundColor: const Color(0xFF175889),
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
import 'package:poster_maker/model/category_model.dart';
import 'package:poster_maker/views/provider/category_provider.dart';
import 'package:poster_maker/views/provider/date_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/Notifications/notification_screen.dart';
import 'package:poster_maker/views/checklist/check_list_screen.dart';
import 'package:poster_maker/views/dates/date_screen.dart';
import 'package:poster_maker/views/invoices/list_invoice.dart';
import 'package:poster_maker/views/profile/profile_screen.dart';
import 'package:poster_maker/views/widgets/carousel_slider_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch categories and due dates when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final categoryProvider =
          Provider.of<CategoryProvider>(context, listen: false);
      final dateProvider = Provider.of<DateProvider>(context, listen: false);
      
      if (categoryProvider.shouldFetchCategories) {
        categoryProvider.fetchCategories();
      }
      
      if (dateProvider.shouldFetchDates) {
        dateProvider.fetchDueDates();
      }
    });
  }

  // Method to launch WhatsApp
  Future<void> _launchWhatsApp() async {
    const phoneNumber = '+1234567890'; // Replace with your phone number
    const message = 'Hello! I would like to inquire about your services.';

    final whatsappUrl = Uri.parse(
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');

    try {
      if (await canLaunchUrl(whatsappUrl)) {
        await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
      } else {
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
          child: RefreshIndicator(
            onRefresh: () async {
              await Future.wait([
                Provider.of<CategoryProvider>(context, listen: false)
                    .refreshCategories(),
                Provider.of<DateProvider>(context, listen: false)
                    .refreshDueDates(),
              ]);
            },
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
                        Row(
                          children: [
                            Image.asset(
                              'lib/assets/premiumimage.png',
                              width: 36,
                              height: 36,
                            ),
                            const SizedBox(width: 12),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                
                // Due Dates section with dynamic counts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Due Dates',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Consumer<DateProvider>(
                      builder: (context, dateProvider, child) {
                        if (dateProvider.isLoading && !dateProvider.isRefreshing) {
                          return const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          );
                        }
                        if (dateProvider.overdueCount > 0) {
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              '${dateProvider.overdueCount} overdue',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Dynamic Due Date buttons with backend images
                Consumer<DateProvider>(
                  builder: (context, dateProvider, child) {
                    if (dateProvider.isLoading && !dateProvider.isRefreshing) {
                      return _buildLoadingDueDates();
                    }

                    if (dateProvider.hasError) {
                      return _buildErrorDueDates(dateProvider);
                    }

                    return _buildDynamicDueDateRow(dateProvider);
                  },
                ),
                const SizedBox(height: 20),

                // Categories section with API integration
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Consumer<CategoryProvider>(
                      builder: (context, categoryProvider, child) {
                        if (categoryProvider.isLoading &&
                            !categoryProvider.isRefreshing) {
                          return const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Dynamic Categories from API
                Consumer<CategoryProvider>(
                  builder: (context, categoryProvider, child) {
                    if (categoryProvider.isLoading &&
                        !categoryProvider.isRefreshing) {
                      return _buildLoadingCategories();
                    }

                    if (categoryProvider.hasError) {
                      return _buildErrorCategories(categoryProvider);
                    }

                    if (categoryProvider.hasData) {
                      return _buildCategoriesGrid(categoryProvider.categories);
                    }

                    return _buildEmptyCategories();
                  },
                ),

                // Static categories (keeping original ones as fallback)
                const SizedBox(height: 20),

                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
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
      ),
    );
  }

  // Due dates loading widget
  Widget _buildLoadingDueDates() {
    return Row(
      children: List.generate(3, (index) {
        return Container(
          width: 72,
          height: 80,
          margin: EdgeInsets.only(right: index < 2 ? 10 : 0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      }),
    );
  }

  // Due dates error widget
  Widget _buildErrorDueDates(DateProvider dateProvider) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, color: Colors.red[400], size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Failed to load due dates',
              style: TextStyle(color: Colors.red[700], fontSize: 12),
            ),
          ),
          TextButton(
            onPressed: () => dateProvider.retryFetchDueDates(),
            child: Text('Retry', style: TextStyle(color: Colors.red[700])),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid(List<Category> categories) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: categories.map((category) {
        return GestureDetector(
          onTap: () {
            // Handle category tap - navigate to category screen
            print('Tapped on category: ${category.categoryName}');
            // Navigator.push(context, MaterialPageRoute(...));
          },
          child: _buildApiCategoryButton(category),
        );
      }).toList(),
    );
  }

  Widget _buildApiCategoryButton(Category category) {
    return SizedBox(
      width: 75,
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
              backgroundColor: const Color(0xFF175889),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    category.imageUrl,
                    height: 28,
                    width: 28,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const SizedBox(
                        height: 28,
                        width: 28,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.category,
                        color: Colors.white,
                        size: 20,
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              category.categoryName,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingCategories() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 75,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildErrorCategories(CategoryProvider categoryProvider) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Column(
        children: [
          Icon(Icons.error_outline, color: Colors.red[400], size: 40),
          const SizedBox(height: 10),
          Text(
            'Failed to load categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            categoryProvider.errorMessage,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red[600], fontSize: 12),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => categoryProvider.retryFetchCategories(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[400],
              foregroundColor: Colors.white,
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyCategories() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(Icons.category_outlined, color: Colors.grey[400], size: 40),
          const SizedBox(height: 10),
          Text(
            'No categories available',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  // Build dynamic due date row with backend images
  Widget _buildDynamicDueDateRow(DateProvider dateProvider) {
    // Get today's dates for images
    final todayDates = dateProvider.todayDates;
    final thisMonthDates = dateProvider.thisMonthDates;
    final nextMonthDates = dateProvider.nextMonthDates;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Today button
          GestureDetector(
            onTap: () {
              dateProvider.applyFilter(DateFilter.today);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DateScreen()));
            },
            child: _buildBackendImageDueDateButton(
              'Today',
              todayDates.isNotEmpty ? todayDates.first.image : null,
              dateProvider.todayCount,
              dateProvider.todayCount > 0 ? Colors.orange : null,
              'Today\'s due dates',
            ),
          ),
          const SizedBox(width: 10),
          
          // This Month button
          GestureDetector(
            onTap: () {
              dateProvider.applyFilter(DateFilter.thisMonth);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DateScreen()));
            },
            child: _buildBackendImageDueDateButton(
              'This Month',
              thisMonthDates.isNotEmpty ? thisMonthDates.first.image : null,
              dateProvider.thisMonthCount,
              null,
              'This month\'s due dates',
            ),
          ),
          const SizedBox(width: 10),
          
          // Next Month button
          GestureDetector(
            onTap: () {
              dateProvider.applyFilter(DateFilter.nextMonth);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DateScreen()));
            },
            child: _buildBackendImageDueDateButton(
              'Next Month',
              nextMonthDates.isNotEmpty ? nextMonthDates.first.image : null,
              dateProvider.nextMonthCount,
              null,
              'Next month\'s due dates',
            ),
          ),
          
          // Show overdue if any
          if (dateProvider.overdueCount > 0) ...[
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                dateProvider.applyFilter(DateFilter.overdue);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DateScreen()));
              },
              child: _buildBackendImageDueDateButton(
                'Overdue',
                dateProvider.overdueDates.isNotEmpty ? dateProvider.overdueDates.first.image : null,
                dateProvider.overdueCount,
                Colors.red,
                'Overdue items',
              ),
            ),
          ],
        ],
      ),
    );
  }

  // Enhanced due date button with backend images
  Widget _buildBackendImageDueDateButton(
    String label, 
    String? imageUrl, 
    int count, 
    Color? badgeColor,
    String tooltip,
  ) {
    return Tooltip(
      message: tooltip,
      child: SizedBox(
        width: 72,
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
                backgroundColor: const Color(0xFF175889),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: _buildDueDateImage(imageUrl),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build image widget for due dates (backend or fallback)
  Widget _buildDueDateImage(String? imageUrl) {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          height: 28,
          width: 28,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const SizedBox(
              height: 28,
              width: 28,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 20,
            );
          },
        ),
      );
    } else {
      // Fallback icon when no image available
      return const Icon(
        Icons.calendar_today,
        color: Colors.white,
        size: 20,
      );
    }
  }

  static Widget _buildDueDateButton(String label, Image image) {
    return SizedBox(
      width: 72,
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
              backgroundColor: const Color(0xFF175889),
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
      width: 75,
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
              backgroundColor: const Color(0xFF175889),
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