import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poster_maker/model/job_model.dart';

class JobService {
  final String baseUrl = 'https://postmaker-backend-1.onrender.com/api/job';

  // Get all jobs
  Future<JobResponse> getAllJobs() async {
    try {
      final response = await http.get(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('job status code ${response.statusCode}');
      print('job response body ${response.body}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return JobResponse.fromJson(jsonData);
      } else {
        throw Exception('Failed to load jobs: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching jobs: $e');
    }
  }

  // Get jobs with filter
  Future<JobResponse> getFilteredJobs(String filter) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl?filter=$filter'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return JobResponse.fromJson(jsonData);
      } else {
        throw Exception('Failed to load filtered jobs: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching filtered jobs: $e');
    }
  }

  // Get job by ID
  Future<Job> getJobById(String jobId) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/$jobId'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return Job.fromJson(jsonData['job']);
      } else {
        throw Exception('Failed to load job details: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching job details: $e');
    }
  }

  // Post a new job
  Future<bool> postJob(Map<String, dynamic> jobData) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(jobData),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to post job: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error posting job: $e');
    }
  }
}
