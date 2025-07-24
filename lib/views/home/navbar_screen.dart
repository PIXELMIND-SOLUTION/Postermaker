

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/home/group_screen.dart';
// import 'package:poster_maker/views/home/home_screen.dart';
// import 'package:poster_maker/views/home/video_creating_screen.dart';
// import 'package:poster_maker/views/provider/navbar_provider.dart';

// import 'package:provider/provider.dart';

// class NavbarScreen extends StatelessWidget {
//   const NavbarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final bottomnavbarProvider = Provider.of<BottomNavbarProvider>(context);

//     final pages = [
//       HomeScreen(),
//       NewsScreen(),
//       ListInvoiceScreen(),
     
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[bottomnavbarProvider.currentIndex],
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 12.0),
//         child: PhysicalModel(
//           color: Colors.transparent,
//           elevation: 12,
//           shadowColor: const Color.fromARGB(66, 0, 0, 0),
//           borderRadius: BorderRadius.circular(30),
//           child: CurvedNavigationBar(
//             index: bottomnavbarProvider.currentIndex,
//             height: 60,
            
//             backgroundColor: Colors.transparent,
//             color: const Color.fromARGB(255, 40, 43, 46),
//             buttonBackgroundColor:  Colors.teal,
//             animationDuration: const Duration(milliseconds: 300),
//             animationCurve: Curves.easeInOut,
//             onTap: (index) {
//               bottomnavbarProvider.setIndex(index);
//             },
//             items: const [
//               _NavBarItem(icon: Icons.home_outlined, label: 'Home'),
//               _NavBarItem(icon: Icons.newspaper, label: 'Jobs&News'),
//               _NavBarItem(icon: Icons.menu, label: 'Menu'),
//             //   _NavBarItem(icon: Icons.person_outline, label: ''),
              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // class _NavBarItem extends StatelessWidget {
// //   final IconData icon;
// //   final String label;

// //   const _NavBarItem({required this.icon, required this.label});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Icon(icon, size: 24, color: Colors.white),
// //         // const SizedBox(height: 2),
// //         Text(
// //           label,
// //           style: const TextStyle(
// //             color: Colors.white,
// //             fontSize: 10,
// //             fontWeight: FontWeight.w500,
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }





// class _NavBarItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const _NavBarItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 30, 
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min, 
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 26, color: Colors.white),
//             if (label.isNotEmpty) ...[
//               const SizedBox(height: 2),
//               Text(
//                 label,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 10,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ]
//           ],
//         ),
//       ),
//     );
//   }
// }









// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/home/group_screen.dart';
// import 'package:poster_maker/views/home/home_screen.dart';
// import 'package:poster_maker/views/home/video_creating_screen.dart';
// import 'package:poster_maker/views/provider/navbar_provider.dart';
// import 'package:provider/provider.dart';

// class NavbarScreen extends StatelessWidget {
//   const NavbarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final bottomnavbarProvider = Provider.of<BottomNavbarProvider>(context);

//     final pages = [
//       HomeScreen(),
//       NewsScreen(),
//       ProfileScreen(),
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[bottomnavbarProvider.currentIndex],
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 12.0),
//         child: PhysicalModel(
//           color: Colors.transparent,
//           elevation: 12,
//           shadowColor: const Color.fromARGB(66, 0, 0, 0),
//           borderRadius: BorderRadius.circular(30),
//           child: CurvedNavigationBar(
//             index: bottomnavbarProvider.currentIndex,
//             height: 60, // Increased height to avoid overflow
//             backgroundColor: Colors.transparent,
//             color: Colors.white,
//             buttonBackgroundColor: const Color.fromARGB(255, 82, 135, 169),
//             animationDuration: const Duration(milliseconds: 300),
//             animationCurve: Curves.easeInOut,
//             onTap: (index) {
//               bottomnavbarProvider.setIndex(index);
//             },
//             items: const [
//               _NavBarItem(icon: Icons.home_outlined, label: 'Home'),
//               _NavBarItem(icon: Icons.newspaper, label: 'Jobs&News'),
//               _NavBarItem(icon: Icons.menu, label: 'Menu'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _NavBarItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const _NavBarItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40, // Increased slightly to accommodate icon + text
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 24, color: const Color.fromARGB(255, 124, 123, 123)), // Reduced size from 26 to 24
//           if (label.isNotEmpty) ...[
//             const SizedBox(height: 2),
//             Text(
//               label,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 10,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ]
//         ],
//       ),
//     );
//   }
// }






// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/home/group_screen.dart';
// import 'package:poster_maker/views/home/home_screen.dart';
// import 'package:poster_maker/views/home/video_creating_screen.dart';
// import 'package:poster_maker/views/provider/navbar_provider.dart';
// import 'package:provider/provider.dart';

// class NavbarScreen extends StatelessWidget {
//   const NavbarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final bottomnavbarProvider = Provider.of<BottomNavbarProvider>(context);

//     final pages = [
//       HomeScreen(),
//       NewsScreen(),
//       ProfileScreen(),
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[bottomnavbarProvider.currentIndex],
//       bottomNavigationBar: Material(
//         elevation: 12,
//         borderRadius: BorderRadius.circular(30),
//         shadowColor: Colors.black.withOpacity(0.3),
//         child: CurvedNavigationBar(
//           index: bottomnavbarProvider.currentIndex,
//           height: 60,
//           backgroundColor: Colors.transparent,
//           color: Colors.white,
//           buttonBackgroundColor: const Color.fromARGB(255, 82, 135, 169),
//           animationDuration: const Duration(milliseconds: 300),
//           animationCurve: Curves.easeInOut,
//           onTap: (index) {
//             bottomnavbarProvider.setIndex(index);
//           },
//           items: const [
//             _NavBarItem(icon: Icons.home_outlined, label: 'Home'),
//             _NavBarItem(icon: Icons.newspaper, label: 'Jobs&News'),
//             _NavBarItem(icon: Icons.menu, label: 'Menu'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _NavBarItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const _NavBarItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 24, color: const Color.fromARGB(255, 124, 123, 123)),
//           if (label.isNotEmpty) ...[
//             const SizedBox(height: 2),
//             Text(
//               label,
//               style: const TextStyle(
//                 color: Color.fromARGB(255, 124, 123, 123),
//                 fontSize: 10,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ]
//         ],
//       ),
//     );
//   }
// }








// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/home/home_screen.dart';
// import 'package:poster_maker/views/home/video_creating_screen.dart';
// import 'package:poster_maker/views/provider/navbar_provider.dart';
// import 'package:provider/provider.dart';

// class NavbarScreen extends StatelessWidget {
//   const NavbarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final bottomnavbarProvider = Provider.of<BottomNavbarProvider>(context);

//     final pages = [
//       HomeScreen(),
//       NewsScreen(),
//     //   ProfileScreen(),
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[bottomnavbarProvider.currentIndex],
//       bottomNavigationBar: Material(
//         elevation: 12,
//         borderRadius: BorderRadius.circular(30),
//         shadowColor: Colors.black.withOpacity(0.3),
//         child: CurvedNavigationBar(
//           index: bottomnavbarProvider.currentIndex,
//           height: 60,
//           backgroundColor: Colors.transparent,
//           color: Colors.white,
//           buttonBackgroundColor: const Color.fromARGB(255, 82, 135, 169),
//           animationDuration: const Duration(milliseconds: 300),
//           animationCurve: Curves.easeInOut,
//           onTap: (index) {
//             bottomnavbarProvider.setIndex(index);
//           },
//           items: [
//             _NavBarItem(
//               icon: Icons.home_outlined,
//               label: 'Home',
//               isSelected: bottomnavbarProvider.currentIndex == 0,
//             ),
//             _NavBarItem(
//               icon: Icons.newspaper,
//               label: 'Jobs&News',
//               isSelected: bottomnavbarProvider.currentIndex == 1,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _NavBarItem extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool isSelected;

//   const _NavBarItem({
//     required this.icon,
//     required this.label,
//     required this.isSelected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final color = isSelected ? Colors.white : const Color.fromARGB(255, 124, 123, 123);

//     return SizedBox(
//       height: 40,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 24, color: color),
//           if (label.isNotEmpty) ...[
//             const SizedBox(height: 2),
//             Text(
//               label,
//               style: TextStyle(
//                 color: color,
//                 fontSize: 10,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ]
//         ],
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:poster_maker/views/home/home_screen.dart';
import 'package:poster_maker/views/home/video_creating_screen.dart';
import 'package:poster_maker/views/provider/navbar_provider.dart';
import 'package:provider/provider.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomnavbarProvider = Provider.of<BottomNavbarProvider>(context);

    final pages = [
      HomeScreen(),
      NewsScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[bottomnavbarProvider.currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarItem(
              icon: Icons.home,
              label: 'Home',
              index: 0,
              isSelected: bottomnavbarProvider.currentIndex == 0,
              onTap: () => bottomnavbarProvider.setIndex(0),
            ),
            _NavBarItem(
              icon: Icons.work_outline,
              label: 'Jobs & News',
              index: 1,
              isSelected: bottomnavbarProvider.currentIndex == 1,
              onTap: () => bottomnavbarProvider.setIndex(1),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavBarItem({
    required this.icon,
    required this.label,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final selectedColor = Color(0xFF175889); // Blue color shown in your image
    final unselectedColor = Color(0xFF9E9E9E); // Light grey

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              color: isSelected ? selectedColor : unselectedColor, size: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? selectedColor : unselectedColor,
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
