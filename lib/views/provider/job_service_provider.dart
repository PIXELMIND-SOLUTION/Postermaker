import 'package:flutter/material.dart';
import 'package:poster_maker/model/job_model.dart';
import 'package:poster_maker/services/job_service.dart';

class JobProvider extends ChangeNotifier {
  final JobService _jobService = JobService();
  
  List<Job> _jobs = [];
  bool _isLoading = false;
  String _errorMessage = '';
  String _selectedFilter = '';

  // Getters
  List<Job> get jobs => _jobs;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;
  String get selectedFilter => _selectedFilter;

  // Fetch all jobs
  Future<void> fetchJobs() async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      final response = await _jobService.getAllJobs();
      if (response.success) {
        _jobs = response.jobs;
      } else {
        _errorMessage = 'Failed to load jobs';
      }
    } catch (e) {
      _errorMessage = e.toString();
      _jobs = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Fetch jobs with filter
  Future<void> fetchJobsWithFilter(String filter) async {
    _isLoading = true;
    _errorMessage = '';
    _selectedFilter = filter;
    notifyListeners();

    try {
      final response = await _jobService.getFilteredJobs(filter);
      if (response.success) {
        _jobs = response.jobs;
      } else {
        _errorMessage = 'Failed to load filtered jobs';
      }
    } catch (e) {
      _errorMessage = e.toString();
      _jobs = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Clear filter and fetch all jobs
  Future<void> clearFilter() async {
    _selectedFilter = '';
    await fetchJobs();
  }

  // Refresh jobs
  Future<void> refreshJobs() async {
    if (_selectedFilter.isNotEmpty) {
      await fetchJobsWithFilter(_selectedFilter);
    } else {
      await fetchJobs();
    }
  }

  // Get job by ID
  Future<Job?> getJobById(String jobId) async {
    try {
      return await _jobService.getJobById(jobId);
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
      return null;
    }
  }

  // Post a new job
  Future<bool> postJob(Map<String, dynamic> jobData) async {
    try {
      final success = await _jobService.postJob(jobData);
      if (success) {
        // Refresh jobs after posting
        await refreshJobs();
      }
      return success;
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  // Clear error message
  void clearError() {
    _errorMessage = '';
    notifyListeners();
  }
}