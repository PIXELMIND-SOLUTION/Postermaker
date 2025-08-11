import 'package:flutter/material.dart';
import 'package:poster_maker/model/date_model.dart';

import 'package:poster_maker/services/date_service.dart';

enum DateFilter { all, today, thisMonth, nextMonth, overdue, upcoming }

class DateProvider extends ChangeNotifier {
  final DateService _dateService = DateService();

  // State variables
  List<DueDate> _allDueDates = [];
  List<DueDate> _filteredDueDates = [];
  bool _isLoading = false;
  bool _isRefreshing = false;
  bool _hasError = false;
  String _errorMessage = '';
  DateFilter _currentFilter = DateFilter.all;
  bool _shouldFetchDates = true;

  // Getters
  List<DueDate> get allDueDates => _allDueDates;
  List<DueDate> get filteredDueDates => _filteredDueDates;
  bool get isLoading => _isLoading;
  bool get isRefreshing => _isRefreshing;
  bool get hasError => _hasError;
  String get errorMessage => _errorMessage;
  DateFilter get currentFilter => _currentFilter;
  bool get hasData => _allDueDates.isNotEmpty;
  bool get shouldFetchDates => _shouldFetchDates;

  // Computed getters for different date categories
  List<DueDate> get todayDates => _allDueDates.where((date) => date.isToday()).toList();
  List<DueDate> get thisMonthDates => _allDueDates.where((date) => date.isThisMonth()).toList();
  List<DueDate> get nextMonthDates => _allDueDates.where((date) => date.isNextMonth()).toList();
  List<DueDate> get overdueDates => _allDueDates.where((date) => date.isOverdue).toList();
  
  // Get count for each category
  int get todayCount => todayDates.length;
  int get thisMonthCount => thisMonthDates.length;
  int get nextMonthCount => nextMonthDates.length;
  int get overdueCount => overdueDates.length;

  // Fetch all due dates
  Future<void> fetchDueDates() async {
    if (!_shouldFetchDates && _allDueDates.isNotEmpty) return;

    _setLoadingState(true);
    _clearError();

    try {
      final dates = await _dateService.fetchDueDates();
      _allDueDates = dates;
      _filteredDueDates = dates;
      _shouldFetchDates = false;
      _applyCurrentFilter();
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoadingState(false);
    }
  }

  // Refresh due dates
  Future<void> refreshDueDates() async {
    _isRefreshing = true;
    notifyListeners();

    try {
      final dates = await _dateService.fetchDueDates();
      _allDueDates = dates;
      _filteredDueDates = dates;
      _clearError();
      _applyCurrentFilter();
    } catch (e) {
      _setError(e.toString());
    } finally {
      _isRefreshing = false;
      notifyListeners();
    }
  }

  // Retry fetch after error
  Future<void> retryFetchDueDates() async {
    _shouldFetchDates = true;
    await fetchDueDates();
  }

  // Apply filter to dates
  void applyFilter(DateFilter filter) {
    _currentFilter = filter;
    _applyCurrentFilter();
  }

  void _applyCurrentFilter() {
    switch (_currentFilter) {
      case DateFilter.all:
        _filteredDueDates = _allDueDates;
        break;
      case DateFilter.today:
        _filteredDueDates = todayDates;
        break;
      case DateFilter.thisMonth:
        _filteredDueDates = thisMonthDates;
        break;
      case DateFilter.nextMonth:
        _filteredDueDates = nextMonthDates;
        break;
      case DateFilter.overdue:
        _filteredDueDates = overdueDates;
        break;
      case DateFilter.upcoming:
        final now = DateTime.now();
        final nextWeek = now.add(const Duration(days: 7));
        _filteredDueDates = _allDueDates.where((date) {
          return date.dueDate.isAfter(now) && date.dueDate.isBefore(nextWeek);
        }).toList();
        break;
    }
    notifyListeners();
  }

  // Get specific filtered dates without changing current filter
  List<DueDate> getDatesForFilter(DateFilter filter) {
    switch (filter) {
      case DateFilter.all:
        return _allDueDates;
      case DateFilter.today:
        return todayDates;
      case DateFilter.thisMonth:
        return thisMonthDates;
      case DateFilter.nextMonth:
        return nextMonthDates;
      case DateFilter.overdue:
        return overdueDates;
      case DateFilter.upcoming:
        final now = DateTime.now();
        final nextWeek = now.add(const Duration(days: 7));
        return _allDueDates.where((date) {
          return date.dueDate.isAfter(now) && date.dueDate.isBefore(nextWeek);
        }).toList();
    }
  }

  // Search functionality
  void searchDueDates(String query) {
    if (query.isEmpty) {
      _applyCurrentFilter();
      return;
    }

    final searchResults = _allDueDates.where((date) {
      // You can expand this to search by other fields if needed
      return date.id.toLowerCase().contains(query.toLowerCase());
    }).toList();

    _filteredDueDates = searchResults;
    notifyListeners();
  }

  // Sort functionality
  void sortDueDates({bool ascending = true}) {
    _filteredDueDates.sort((a, b) {
      if (ascending) {
        return a.dueDate.compareTo(b.dueDate);
      } else {
        return b.dueDate.compareTo(a.dueDate);
      }
    });
    notifyListeners();
  }

  // Clear all data
  void clearData() {
    _allDueDates.clear();
    _filteredDueDates.clear();
    _shouldFetchDates = true;
    _clearError();
    notifyListeners();
  }

  // Private helper methods
  void _setLoadingState(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String message) {
    _hasError = true;
    _errorMessage = message;
    notifyListeners();
  }

  void _clearError() {
    _hasError = false;
    _errorMessage = '';
  }

  // Force refresh flag
  void markForRefresh() {
    _shouldFetchDates = true;
  }
}