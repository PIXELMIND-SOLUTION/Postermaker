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
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[bottomnavbarProvider.currentIndex],
//       bottomNavigationBar: Container(
//         height: 60,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border(top: BorderSide(color: Colors.grey.shade300)),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _NavBarItem(
//               icon: Icons.home,
//               label: 'Home',
//               index: 0,
//               isSelected: bottomnavbarProvider.currentIndex == 0,
//               onTap: () => bottomnavbarProvider.setIndex(0),
//             ),
//             _NavBarItem(
//               icon: Icons.work_outline,
//               label: 'Jobs & News',
//               index: 1,
//               isSelected: bottomnavbarProvider.currentIndex == 1,
//               onTap: () => bottomnavbarProvider.setIndex(1),
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
//   final int index;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const _NavBarItem({
//     required this.icon,
//     required this.label,
//     required this.index,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final selectedColor = Color(0xFF175889); 
//     final unselectedColor = Color(0xFF9E9E9E); 

//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon,
//               color: isSelected ? selectedColor : unselectedColor, size: 24),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               color: isSelected ? selectedColor : unselectedColor,
//               fontSize: 12,
//               fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











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
//       const HomeScreen(),
//       const NewsScreen(),
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[bottomnavbarProvider.currentIndex],
//       bottomNavigationBar: Container(
//         height: 60,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border(top: BorderSide(color: Colors.grey.shade300)),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _NavBarItem(
//               icon: Icons.home,
//               label: 'Home',
//               index: 0,
//               isSelected: bottomnavbarProvider.currentIndex == 0,
//               onTap: () => bottomnavbarProvider.setIndex(0),
//             ),
//             _NavBarItem(
//               icon: Icons.work_outline,
//               label: 'Jobs & News',
//               index: 1,
//               isSelected: bottomnavbarProvider.currentIndex == 1,
//               onTap: () => bottomnavbarProvider.setIndex(1),
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
//   final int index;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const _NavBarItem({
//     required this.icon,
//     required this.label,
//     required this.index,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final selectedColor = const Color(0xFF175889);
//     final unselectedColor = const Color(0xFF9E9E9E);

//     return GestureDetector(
//       onTap: onTap,
//       child: SizedBox(
//         width: 80,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Spotlight effect on top of selected icon
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 250),
//               width: 32,
//               height: 6,
//               decoration: BoxDecoration(
//                 color: isSelected ? selectedColor.withOpacity(0.6) : Colors.transparent,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: isSelected
//                     ? [
//                         BoxShadow(
//                           color: selectedColor.withOpacity(0.3),
//                           blurRadius: 6,
//                           spreadRadius: 1,
//                           offset: const Offset(0, 2),
//                         ),
//                       ]
//                     : [],
//               ),
//             ),
//             const SizedBox(height: 4),
//             Icon(
//               icon,
//               color: isSelected ? selectedColor : unselectedColor,
//               size: 24,
//             ),
//             const SizedBox(height: 4),
//             Text(
//               label,
//               style: TextStyle(
//                 color: isSelected ? selectedColor : unselectedColor,
//                 fontSize: 12,
//                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }















import 'package:flutter/material.dart';
import 'package:poster_maker/views/home/home_screen.dart';
import 'package:poster_maker/views/home/job_screen.dart';
import 'package:poster_maker/views/home/video_creating_screen.dart';
import 'package:poster_maker/views/provider/navbar_provider.dart';
import 'package:provider/provider.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomnavbarProvider = Provider.of<BottomNavbarProvider>(context);

    final pages = [
      const HomeScreen(),
      const JobScreen(),
      const NewsScreen(),
    
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[bottomnavbarProvider.currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xFF175889), // Set dark blue background
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
              label: 'Jobs',
              index: 1,
              isSelected: bottomnavbarProvider.currentIndex == 1,
              onTap: () => bottomnavbarProvider.setIndex(1),
            ),
            _NavBarItem(
              icon: Icons.newspaper,
              label: 'News',
              index: 2,
              isSelected: bottomnavbarProvider.currentIndex == 2,
              onTap: () => bottomnavbarProvider.setIndex(2),
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
    final selectedColor = Colors.white;       // Selected item is white
    final unselectedColor = const Color.fromARGB(179, 255, 255, 255);   // Unselected item is light white

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Optional spotlight effect
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: 32,
              height: 6,
              decoration: BoxDecoration(
                color: isSelected ? selectedColor.withOpacity(0.6) : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: selectedColor.withOpacity(0.3),
                          blurRadius: 6,
                          spreadRadius: 1,
                          offset: const Offset(0, 2),
                        ),
                      ]
                    : [],
              ),
            ),
            const SizedBox(height: 4),
            Icon(
              icon,
              color: isSelected ? selectedColor : unselectedColor,
              size: 24,
            ),
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
      ),
    );
  }
}
