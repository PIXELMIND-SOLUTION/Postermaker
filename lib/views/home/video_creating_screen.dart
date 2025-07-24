// import 'package:flutter/material.dart';

// class NewsScreen extends StatelessWidget {
//   const NewsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7F7F7),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Header: Profile & Icons
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // Profile Info
//                     Row(
//                       children: [
//                         CircleAvatar(
//                           radius: 22,
//                           backgroundImage: AssetImage('lib\assets\logonews.png'),
//                         ),
//                         const SizedBox(width: 10),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             Text(
//                               "PMS Software",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               "Hyderabad",
//                               style: TextStyle(fontSize: 12, color: Colors.grey),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     // Icons
//                     Row(
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.share),
//                           onPressed: () {},
//                         ),
//                         IconButton(
//                           icon: const Icon(Icons.notifications_none),
//                           onPressed: () {},
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),

//               // Search Bar
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: "Search",
//                     prefixIcon: const Icon(Icons.search),
//                     filled: true,
//                     fillColor: Colors.white,
//                     contentPadding: const EdgeInsets.symmetric(vertical: 0),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Filter & Post a Job
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   children: [
//                     // Filter Button
//                     Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: const Row(
//                         children: [
//                           Icon(Icons.filter_list, size: 18),
//                           SizedBox(width: 4),
//                           Text("All"),
//                         ],
//                       ),
//                     ),
//                     const Spacer(),
//                     ElevatedButton.icon(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       icon: const Icon(Icons.add),
//                       label: const Text("Post a Job"),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Job Cards
//               ...List.generate(3, (index) => _buildJobCard()),

//               // News Articles
//               ...List.generate(3, (index) => _buildNewsCard(index + 1)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildJobCard() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//       child: Container(
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(6),
//               child: Image.asset(
//                 'lib/assets/logonews.png',
//                 width: 40,
//                 height: 40,
//               ),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     "Highspeed Studios",
//                     style: TextStyle(fontSize: 12, color: Colors.grey),
//                   ),
//                   SizedBox(height: 2),
//                   Text(
//                     "Junior Software Engineer",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 6),
//                   Row(
//                     children: [
//                       Icon(Icons.money, size: 14, color: Colors.blue),
//                       SizedBox(width: 4),
//                       Text("₹50,000 – ₹100,000", style: TextStyle(fontSize: 12)),
                     
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       //  SizedBox(width: 12),
//                       Icon(Icons.location_on, size: 14, color: Colors.blue),
//                       SizedBox(width: 4),
//                       Text("Jakarta, Indonesia", style: TextStyle(fontSize: 12)),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             const Icon(Icons.chevron_right),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNewsCard(int index) {
//     final image = 'lib/assets/logonews.png$index';
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(12),
//                 bottomLeft: Radius.circular(12),
//               ),
//               child: Image.asset(
//                 image,
//                 width: 80,
//                 height: 80,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text(
//                       "India won the match and take the world cup happily.",
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(height: 6),
//                     Text(
//                       "CCN INDIA · 6 hours ago",
//                       style: TextStyle(fontSize: 12, color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }










import 'package:flutter/material.dart';
import 'package:poster_maker/views/Notifications/notification_screen.dart';
import 'package:poster_maker/views/cricket/cricket_detail_screen.dart';
import 'package:poster_maker/views/jobscreen/job_details_screen.dart';
import 'package:poster_maker/views/jobscreen/post_job_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header: Profile & Icons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Profile Info
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage('lib/assets/profileimage.png'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "PMS Software",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Hyderabad",
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Icons
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.notifications_none),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 240, 239, 239),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Filter & Post a Job
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    // Filter Button
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down, size: 18),
                          SizedBox(width: 4),
                          Text("All",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PostJobScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:   Color(0xFF175889),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: const Icon(Icons.add,color: Colors.white,),
                      label: const Text("Post a Job",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Job Cards
              ...List.generate(3, (index) => _buildJobCard(context)),

              // News Articles
              ...List.generate(3, (index) => _buildNewsCard(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>JobDetailsScreen()));
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'lib/assets/logonews.png',
                  width: 40,
                  // height: 40,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Highspeed Studios",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Junior Software Engineer",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Image(image: AssetImage('lib/assets/coinsimage.png')),
                        // Icon(Icons.money, size: 14, color: Colors.blue),
                        SizedBox(width: 8),
                        Text("₹50,000 – ₹100,000", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                        SizedBox(height: 6),
                    Row(
                      children: [
                        Image(image: AssetImage('lib/assets/bagimage.png')),
                        SizedBox(width: 8),
                        Text("Jakarta, Indonesia", style: TextStyle(fontSize: 12)),
                      ],
                    )
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CricketDetailScreen()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color.fromARGB(255, 207, 204, 204)
            )
          ),
          child: Row(
            children: [
              SizedBox(width: 8,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                // borderRadius: const BorderRadius.only(
                //   topLeft: Radius.circular(12),
                //   bottomLeft: Radius.circular(12),
                // ),
                child: Image.asset(
                  'lib/assets/12a8b7b74c7504bd8de65a746bf82e0a280702e6.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "India won the match and took the world cup happily.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "CCN INDIA · 6 hours ago",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
