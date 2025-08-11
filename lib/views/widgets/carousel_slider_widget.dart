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
//         viewportFraction: 1.0, // ✅ full width
//         autoPlayAnimationDuration: const Duration(milliseconds: 800),
//       ),
//       items: imageUrls.map((item) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               width: MediaQuery.of(context).size.width,
//               margin: const EdgeInsets.symmetric(horizontal: 4.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(
//                   item,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }

















import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Model for the banner data
class BannerResponse {
  final bool success;
  final List<BannerData> data;

  BannerResponse({
    required this.success,
    required this.data,
  });

  factory BannerResponse.fromJson(Map<String, dynamic> json) {
    return BannerResponse(
      success: json['success'],
      data: (json['data'] as List)
          .map((item) => BannerData.fromJson(item))
          .toList(),
    );
  }
}

class BannerData {
  final String id;
  final List<String> bannerImage;
  final String createdAt;
  final String updatedAt;

  BannerData({
    required this.id,
    required this.bannerImage,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BannerData.fromJson(Map<String, dynamic> json) {
    return BannerData(
      id: json['_id'],
      bannerImage: List<String>.from(json['bannerImage']),
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  List<String> imageUrls = [];
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    fetchBannerImages();
  }

  // Future<void> fetchBannerImages() async {
  //   try {
  //     const url = 'https://postmaker-backend-1.onrender.com/api/banner';
  //     final response = await http.get(Uri.parse(url));


  //     print('Response status code for banner ${response.statusCode}');

  //     if (response.statusCode == 200) {
  //       final bannerResponse = BannerResponse.fromJson(
  //         json.decode(response.body),
  //       );

  //       if (bannerResponse.success && bannerResponse.data.isNotEmpty) {
  //         // Flatten all banner images from all banner objects
  //         List<String> allImages = [];
  //         for (var banner in bannerResponse.data) {
  //           allImages.addAll(banner.bannerImage);
  //         }

  //         setState(() {
  //           imageUrls = allImages;
  //           isLoading = false;
  //         });
  //       } else {
  //         setState(() {
  //           errorMessage = 'No banner data available';
  //           isLoading = false;
  //         });
  //       }
  //     } else {
  //       setState(() {
  //         errorMessage = 'Failed to load banners: ${response.statusCode}';
  //         isLoading = false;
  //       });
  //     }
  //   } catch (e) {
  //     setState(() {
  //       errorMessage = 'Error fetching banners: $e';
  //       isLoading = false;
  //     });
  //   }
  // }



  Future<void> fetchBannerImages() async {
  try {
    const url = 'https://postmaker-backend-1.onrender.com/api/banner';
    final response = await http.get(Uri.parse(url));

    if (!mounted) return; // ✅ Widget might be gone before response

    print('Response status code for banner ${response.statusCode}');

    if (response.statusCode == 200) {
      final bannerResponse = BannerResponse.fromJson(
        json.decode(response.body),
      );

      if (bannerResponse.success && bannerResponse.data.isNotEmpty) {
        // Flatten all banner images from all banner objects
        List<String> allImages = [];
        for (var banner in bannerResponse.data) {
          allImages.addAll(banner.bannerImage);
        }

        if (!mounted) return; // ✅ Check again before setState
        setState(() {
          imageUrls = allImages;
          isLoading = false;
        });
      } else {
        if (!mounted) return;
        setState(() {
          errorMessage = 'No banner data available';
          isLoading = false;
        });
      }
    } else {
      if (!mounted) return;
      setState(() {
        errorMessage = 'Failed to load banners: ${response.statusCode}';
        isLoading = false;
      });
    }
  } catch (e) {
    if (!mounted) return;
    setState(() {
      errorMessage = 'Error fetching banners: $e';
      isLoading = false;
    });
  }
}


  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container(
        height: 132,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (errorMessage != null) {
      return Container(
        height: 132,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, color: Colors.grey[600]),
              const SizedBox(height: 8),
              Text(
                errorMessage!,
                style: TextStyle(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isLoading = true;
                    errorMessage = null;
                  });
                  fetchBannerImages();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

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
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Container(
                      color: Colors.grey[300],
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.broken_image,
                              color: Colors.grey[600],
                              size: 40,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Image failed to load',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}