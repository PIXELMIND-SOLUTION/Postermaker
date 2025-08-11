import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poster_maker/model/date_model.dart';

class DateService {
  final String baseUrl =
      'https://postmaker-backend-1.onrender.com/api/due-date';

  // Get all due dates
  Future<List<DueDate>> fetchDueDates() async {
    try {
      final response = await http.get(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('date api status code ${response.statusCode}');
      print('date api reponse body ${response.body}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        if (jsonResponse['success'] == true && jsonResponse['data'] != null) {
          final List<dynamic> data = jsonResponse['data'];
          return data.map((json) => DueDate.fromJson(json)).toList();
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        throw Exception('Failed to load due dates: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  // Get today's due dates
  Future<List<DueDate>> getTodayDueDates() async {
    try {
      final allDates = await fetchDueDates();
      return allDates.where((date) => date.isToday()).toList();
    } catch (e) {
      throw Exception('Failed to get today\'s due dates: $e');
    }
  }

  // Get this month's due dates
  Future<List<DueDate>> getThisMonthDueDates() async {
    try {
      final allDates = await fetchDueDates();
      return allDates.where((date) => date.isThisMonth()).toList();
    } catch (e) {
      throw Exception('Failed to get this month\'s due dates: $e');
    }
  }

  // Get next month's due dates
  Future<List<DueDate>> getNextMonthDueDates() async {
    try {
      final allDates = await fetchDueDates();
      return allDates.where((date) => date.isNextMonth()).toList();
    } catch (e) {
      throw Exception('Failed to get next month\'s due dates: $e');
    }
  }

  // Get overdue items
  Future<List<DueDate>> getOverdueDates() async {
    try {
      final allDates = await fetchDueDates();
      return allDates.where((date) => date.isOverdue).toList();
    } catch (e) {
      throw Exception('Failed to get overdue dates: $e');
    }
  }

  // Get upcoming dates (next 7 days)
  Future<List<DueDate>> getUpcomingDates() async {
    try {
      final allDates = await fetchDueDates();
      final now = DateTime.now();
      final nextWeek = now.add(const Duration(days: 7));

      return allDates.where((date) {
        return date.dueDate.isAfter(now) && date.dueDate.isBefore(nextWeek);
      }).toList();
    } catch (e) {
      throw Exception('Failed to get upcoming dates: $e');
    }
  }
}
