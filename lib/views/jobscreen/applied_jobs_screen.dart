import 'package:flutter/material.dart';

class AppliedJobsScreen extends StatelessWidget {
  const AppliedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Applied Jobs',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Job Card 1
          _buildJobCard(
            companyName: 'Highspeed Studios',
            jobTitle: 'Junior Software Engineer',
            salaryRange: '₹50,000 - ₹100,000',
            location: 'Jakarta, Indonesia',
          ),
          const SizedBox(height: 16),
          
          // Job Card 2
          _buildJobCard(
            companyName: 'Highspeed Studios',
            jobTitle: 'Junior Software Engineer',
            salaryRange: '₹50,000 - ₹100,000',
            location: 'Jakarta, Indonesia',
          ),
          const SizedBox(height: 16),
          
          // Job Card 3
          _buildJobCard(
            companyName: 'Highspeed Studios',
            jobTitle: 'Junior Software Engineer',
            salaryRange: '₹50,000 - ₹100,000',
            location: 'Jakarta, Indonesia',
          ),
          const SizedBox(height: 16),
          
          // Job Card 4
          _buildJobCard(
            companyName: 'Highspeed Studios',
            jobTitle: 'Junior Software Engineer',
            salaryRange: '₹50,000 - ₹100,000',
            location: 'Jakarta, Indonesia',
          ),
        ],
      ),
    );
  }

  Widget _buildJobCard({
    required String companyName,
    required String jobTitle,
    required String salaryRange,
    required String location,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset('lib/assets/logonews.png',width: 48,height: 48,),
          // Company Logo
          // Container(
          //   width: 48,
          //   height: 48,
          //   decoration: BoxDecoration(
          //     gradient: const LinearGradient(
          //       colors: [Color(0xFFFF6B35), Color(0xFFFF8E53)],
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //     ),
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   child: const Icon(
          //     Icons.rocket_launch_rounded,
          //     color: Colors.white,
          //     size: 24,
          //   ),
          // ),
          const SizedBox(width: 12),
          
          // Job Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  companyName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  jobTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      salaryRange,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          // Three dots menu and Applied button
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF1976D2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'Applied',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}