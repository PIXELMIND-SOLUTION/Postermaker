// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/jobscreen/job_details_screen.dart';
// import 'package:poster_maker/views/jobscreen/post_job_screen.dart';

// class JobScreen extends StatelessWidget {
//   const JobScreen({super.key});

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
//               'Jobs',
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//             leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
//             elevation: 0,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(
//                   width: 100, // Set your desired width
//                   height: 36,
//                   child: OutlinedButton.icon(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.tune,
//                       color: Colors.black,
//                       size: 16,
//                     ),
//                     label: const Text(
//                       'Filter',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                       ),
//                     ),
//                     style: OutlinedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(horizontal: 8),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       side: const BorderSide(color: Colors.black12),
//                     ),
//                   ),
//                 ),

//                 // const SizedBox(width: 79),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>PostJobScreen()));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF175889),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   icon: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                   label: const Text(
//                     "Post a Job",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: const EdgeInsets.only(bottom: 12),
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black12),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>JobDetailsScreen()));
//                           },
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(8),
//                             child: Image.asset(
//                               'lib/assets/logonews.png', // Replace with your image asset path
//                               width: 50,
//                               height: 50,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 'Highspeed Studios',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 'Junior Software ....',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 14,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Row(
//                                 children: [
//                                   Icon(Icons.work_outline,
//                                       color: Colors.blue, size: 16),
//                                   SizedBox(width: 4),
//                                   Text(
//                                     'Jakarta, Indonesia',
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                       color: Colors.black54,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         const Icon(Icons.arrow_forward_ios, size: 16),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }













// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/jobscreen/job_details_screen.dart';
// import 'package:poster_maker/views/jobscreen/post_job_screen.dart';

// class JobScreen extends StatelessWidget {
//   const JobScreen({super.key});

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
//               'Jobs',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
//             elevation: 0,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 PopupMenuButton<String>(
//                   onSelected: (value) {
//                     // Handle filter value selection
//                     print('Selected: $value');
//                   },
//                   itemBuilder: (context) => [
//                     const PopupMenuItem(
//                       value: 'CA',
//                       child: Text('CA'),
//                     ),
//                     const PopupMenuItem(
//                       value: 'CS',
//                       child: Text('CS'),
//                     ),
//                     const PopupMenuItem(
//                       value: 'CMA',
//                       child: Text('CMA'),
//                     ),
//                   ],
//                   child: SizedBox(
//                     width: 100,
//                     height: 36,
//                     child: OutlinedButton.icon(
//                       onPressed: null,
//                       icon: const Icon(
//                         Icons.tune,
//                         color: Colors.black,
//                         size: 16,
//                       ),
//                       label: const Text(
//                         'Filter',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                         ),
//                       ),
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(horizontal: 8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         side: const BorderSide(color: Colors.black12),
//                       ),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => PostJobScreen(),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF175889),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   icon: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                   label: const Text(
//                     "Post a Job",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: (){
//                        Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => JobDetailsScreen(),
//                               ),
//                             );
//                     },
//                     child: Container(
//                       margin: const EdgeInsets.only(bottom: 12),
//                       padding: const EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black12),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => JobDetailsScreen(),
//                                 ),
//                               );
//                             },
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(8),
//                               child: Image.asset(
//                                 'lib/assets/logonews.png',
//                                 width: 50,
//                                 height: 50,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 12),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: const [
//                                 Text(
//                                   'Highspeed Studios',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.black87,
//                                   ),
//                                 ),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   'Junior Software ....',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 SizedBox(height: 4),
//                                 Row(
//                                   children: [
//                                     Icon(Icons.work_outline,
//                                         color: Colors.blue, size: 16),
//                                     SizedBox(width: 4),
//                                     Text(
//                                       'Jakarta, Indonesia',
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         color: Colors.black54,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Icon(Icons.arrow_forward_ios, size: 16),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



















import 'package:flutter/material.dart';
import 'package:poster_maker/model/job_model.dart';
import 'package:poster_maker/views/provider/job_service_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/jobscreen/job_details_screen.dart';
import 'package:poster_maker/views/jobscreen/post_job_screen.dart';


class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch jobs when the screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<JobProvider>(context, listen: false).fetchJobs();
    });
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
              'Jobs',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
            elevation: 0,
          ),
        ),
      ),
      body: Consumer<JobProvider>(
        builder: (context, jobProvider, child) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopupMenuButton<String>(
                      onSelected: (value) {
                        if (value == 'clear') {
                          jobProvider.clearFilter();
                        } else {
                          jobProvider.fetchJobsWithFilter(value);
                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 'CA',
                          child: Text('CA'),
                        ),
                        const PopupMenuItem(
                          value: 'CS',
                          child: Text('CS'),
                        ),
                        const PopupMenuItem(
                          value: 'CMA',
                          child: Text('CMA'),
                        ),
                        if (jobProvider.selectedFilter.isNotEmpty)
                          const PopupMenuItem(
                            value: 'clear',
                            child: Text('Clear Filter'),
                          ),
                      ],
                      child: SizedBox(
                        width: 100,
                        height: 36,
                        child: OutlinedButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.tune,
                            color: jobProvider.selectedFilter.isNotEmpty 
                                ? const Color(0xFF175889) 
                                : Colors.black,
                            size: 16,
                          ),
                          label: Text(
                            jobProvider.selectedFilter.isNotEmpty 
                                ? jobProvider.selectedFilter 
                                : 'Filter',
                            style: TextStyle(
                              color: jobProvider.selectedFilter.isNotEmpty 
                                  ? const Color(0xFF175889) 
                                  : Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(
                              color: jobProvider.selectedFilter.isNotEmpty 
                                  ? const Color(0xFF175889) 
                                  : Colors.black12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PostJobScreen(),
                          ),
                        );
                        
                        // Refresh jobs if a new job was posted
                        if (result == true) {
                          jobProvider.refreshJobs();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF175889),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Post a Job",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Error message display
                if (jobProvider.errorMessage.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      border: Border.all(color: Colors.red[200]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.error_outline, color: Colors.red),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            jobProvider.errorMessage,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                        IconButton(
                          onPressed: jobProvider.clearError,
                          icon: const Icon(Icons.close, color: Colors.red),
                        ),
                      ],
                    ),
                  ),

                Expanded(
                  child: jobProvider.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : jobProvider.jobs.isEmpty
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.work_off,
                                    size: 64,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'No jobs found',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    onPressed: () {
                                      jobProvider.refreshJobs();
                                    },
                                    child: const Text('Retry'),
                                  ),
                                ],
                              ),
                            )
                          : RefreshIndicator(
                              onRefresh: () => jobProvider.refreshJobs(),
                              child: ListView.builder(
                                itemCount: jobProvider.jobs.length,
                                itemBuilder: (context, index) {
                                  final job = jobProvider.jobs[index];
                                  return _buildJobCard(context, job);
                                },
                              ),
                            ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildJobCard(BuildContext context, Job job) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetailsScreen(id: job.id,),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: job.image.isNotEmpty
                  ? Image.network(
                      job.image,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.business, color: Colors.grey),
                        );
                      },
                    )
                  : Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.business, color: Colors.grey),
                    ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job.companyName,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    job.role,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.work_outline, color: Colors.blue, size: 16),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          job.locationName,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}