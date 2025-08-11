// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/jobscreen/applied_jobs_screen.dart';
// import 'package:poster_maker/views/jobscreen/recieved_job_application.dart';
// import 'package:poster_maker/views/profile/edit_profile.dart';
// import 'package:poster_maker/views/resume/list_resume.dart';
// import 'package:poster_maker/views/subscription/subscription_screen.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//             bottomLeft: Radius.circular(24),
//             bottomRight: Radius.circular(24),
//           ),
//           child: AppBar(
//             backgroundColor: const Color(0xFF175889),
//             title: const Text(
//               'Profile',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.person, color: Colors.white),
//             ),
//             elevation: 0,
//           ),
//         ),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         children: [
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Stack(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => EditProfile()));
//                     },
//                     child: const CircleAvatar(
//                       radius: 32,
//                       backgroundImage: AssetImage(
//                         'lib/assets/880309d8d37dba8d3a87672e52a35231ec7c6673.png',
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: Container(
//                       padding: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                       ),
//                       child: const Icon(
//                         Icons.edit,
//                         size: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(width: 16),
//               const Expanded(
//                 child: Text(
//                   'K. Narasimha varma',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                 ),
//               ),
//             ],
//           ),
//           const Divider(height: 32),
//           _buildImageTile('lib/assets/profileimage1.png', 'Refer'),
//           const Divider(),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => SubscriptionScreen()));
//             },
//             child: _buildImageTile(
//                 'lib/assets/profileimage6.png', 'Subscriptions'),
//           ),
//           const Divider(),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => RecievedJobApplication()));
//             },
//             child:
//                 _buildImageTile('lib/assets/profileimage7.png', 'Job info'),
//           ),
//           // const Divider(),
//           // GestureDetector(
//           //   onTap: () {
//           //     Navigator.push(
//           //         context,
//           //         MaterialPageRoute(
//           //             builder: (context) => RecievedJobApplication()));
//           //   },
//           //   child: _buildImageTile(
//           //       'lib/assets/profileimage8.png', 'Job Applications'),
//           // ),
          
//           const Divider(),
//           const SizedBox(height: 20),
//           const Text(
//             'Support & Settings',
//             style: TextStyle(
//               color: Colors.grey,
//               fontWeight: FontWeight.bold,
//               fontSize: 14,
//             ),
//           ),
//           const Divider(),
//           const SizedBox(height: 16),
//           _buildImageTile('lib/assets/profileimage2.png', 'Privacy Policy'),
//           const Divider(),
//           _buildImageTile('lib/assets/profileimage3.png', 'About Us'),
//           const Divider(),
//           _buildImageTile('lib/assets/profileimage4.png', 'Help'),
//           const Divider(),
//           _buildImageTile('lib/assets/profileimage5.png', 'Logout'),
//           const Divider(),
//         ],
//       ),
//     );
//   }

//   Widget _buildImageTile(String imagePath, String title) {
//     return ListTile(
//       contentPadding: const EdgeInsets.symmetric(horizontal: 0),
//       leading: CircleAvatar(
//         radius: 18,
//         backgroundColor: Colors.grey.shade200,
//         backgroundImage: AssetImage(imagePath),
//       ),
//       title: Text(
//         title,
//         style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//       ),
//       trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//     );
//   }
// }



















import 'package:flutter/material.dart';
import 'package:poster_maker/helper/helper_function.dart';
import 'package:poster_maker/views/jobscreen/recieved_job_application.dart';
import 'package:poster_maker/views/profile/edit_profile.dart';
import 'package:poster_maker/views/subscription/subscription_screen.dart';
import 'package:poster_maker/views/auth/sample_screen.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  Future<void> _handleLogout(BuildContext context) async {
    bool? shouldLogout = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );


    if (shouldLogout == true) {
      try {
        await SharedPreferencesHelper.clearUserData();
      
        if (context.mounted) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const SampleScreen(),
            ),
            (Route<dynamic> route) => false,
          );
        }
      } catch (e) {
        // Handle error if logout fails
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Logout failed. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

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
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.person, color: Colors.white),
            ),
            elevation: 0,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()));
                    },
                    child: const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(
                        'lib/assets/880309d8d37dba8d3a87672e52a35231ec7c6673.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'K. Narasimha varma',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const Divider(height: 32),
          _buildImageTile(context, 'lib/assets/profileimage1.png', 'Refer', null),
          const Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SubscriptionScreen()));
            },
            child: _buildImageTile(context,
                'lib/assets/profileimage6.png', 'Subscriptions', null),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RecievedJobApplication()));
            },
            child: _buildImageTile(context,
                'lib/assets/profileimage7.png', 'Job info', null),
          ),
          const Divider(),
          const SizedBox(height: 20),
          const Text(
            'Support & Settings',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const Divider(),
          const SizedBox(height: 16),
          _buildImageTile(context, 'lib/assets/profileimage2.png', 'Privacy Policy', null),
          const Divider(),
          _buildImageTile(context, 'lib/assets/profileimage3.png', 'About Us', null),
          const Divider(),
          _buildImageTile(context, 'lib/assets/profileimage4.png', 'Help', null),
          const Divider(),
          _buildImageTile(context, 'lib/assets/profileimage5.png', 'Logout', () => _handleLogout(context)),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildImageTile(BuildContext context, String imagePath, String title, VoidCallback? onTap) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15, 
          fontWeight: FontWeight.w500,
          color: title == 'Logout' ? Colors.red : Colors.black, // Make logout text red
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}