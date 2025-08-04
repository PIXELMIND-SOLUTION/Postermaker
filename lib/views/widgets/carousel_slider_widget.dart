// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class CarouselSliderWidget extends StatelessWidget {
//   const CarouselSliderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> imageUrls = [
//       'lib/assets/63d6d9a14137276fec34b048c30c2b154f50aad6.png',
//       'lib/assets/63d6d9a14137276fec34b048c30c2b154f50aad6.png',
//       'lib/assets/63d6d9a14137276fec34b048c30c2b154f50aad6.png',
//     ];
    
    
//     if (imageUrls.isEmpty) {
//       return const SizedBox.shrink();
//     }

//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 132,
//         autoPlay: true,
//         enlargeCenterPage: true,
//         viewportFraction: 0.9,
//         autoPlayAnimationDuration: const Duration(milliseconds: 800),
//       ),
//       items: imageUrls.map((item) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Image.asset(
//             item,
//             fit: BoxFit.fill,
//             width: double.infinity,
//           ),
//         );
//       }).toList(),
//     );
//   }
// }















import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'lib/assets/63d6d9a14137276fec34b048c30c2b154f50aad6.png',
      'lib/assets/63d6d9a14137276fec34b048c30c2b154f50aad6.png',
      'lib/assets/63d6d9a14137276fec34b048c30c2b154f50aad6.png',
    ];

    if (imageUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: 132,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0, // ✅ full width
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      items: imageUrls.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
