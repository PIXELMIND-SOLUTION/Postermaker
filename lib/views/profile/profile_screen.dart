import 'package:flutter/material.dart';
import 'package:poster_maker/views/checklist/check_list_screen.dart';
import 'package:poster_maker/views/home/group_screen.dart';
import 'package:poster_maker/views/invoices/list_invoice.dart';
import 'package:poster_maker/views/jobscreen/applied_jobs_screen.dart';
import 'package:poster_maker/views/jobscreen/recieved_job_application.dart';
import 'package:poster_maker/views/profile/edit_profile.dart';
import 'package:poster_maker/views/resume/list_resume.dart';
import 'package:poster_maker/views/subscription/subscription_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.person_outline, color: Colors.black),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                  child: const CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage(
                        'lib/assets/880309d8d37dba8d3a87672e52a35231ec7c6673.png'), 
                  ),
                ),
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
          _buildTile(Icons.person, 'Refer'),
          Divider(),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SubscriptionScreen()));
              },
              child: _buildTile(Icons.subscriptions, 'Subscriptions')),
          Divider(),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckListScreen()));
              },
              child: _buildTile(Icons.check_box, 'Check list')),
          Divider(),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AppliedJobsScreen()));
              },
              child: _buildTile(Icons.assignment_turned_in, 'Applied Jobs')),
          Divider(),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecievedJobApplication()));
              },
              child: _buildTile(Icons.description, 'Job Applications')),
          Divider(),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListInvoiceScreen()));
              },
              child: _buildTile(Icons.inventory_outlined, 'Get Invoice')),
          Divider(),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListResume()));
              },
              child: _buildTile(Icons.file_download, 'Upload Resume')),
          Divider(),
          const SizedBox(height: 20),
          const Text(
            'Support & Settings',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Divider(),
          const SizedBox(height: 16),
          _buildTile(Icons.privacy_tip, 'Privacy Policy',
              iconColor: Colors.orange),
          Divider(),
          _buildTile(Icons.info_outline, 'About Us',
              iconColor: Colors.lightBlue),
          Divider(),
          _buildTile(Icons.help_outline, 'Help', iconColor: Colors.cyan),
          Divider(),
          _buildTile(Icons.power_settings_new, 'Logout',
              iconColor: Colors.deepPurple),
          Divider(),
        ],
      ),
    );
  }

  Widget _buildTile(IconData icon, String title,
      {Color iconColor = Colors.blue}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: iconColor.withOpacity(0.1),
        child: Icon(icon, size: 20, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      // onTap: () {},
    );
  }
}
