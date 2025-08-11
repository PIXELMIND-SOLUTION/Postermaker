import 'package:flutter/material.dart';
import 'package:poster_maker/model/category_model.dart';
import 'package:poster_maker/services/category_services.dart'; // Update with your actual path

enum CategoryState {
  initial,
  loading,
  loaded,
  error,
}

class CategoryProvider extends ChangeNotifier {
  final CategoryService _categoryService = CategoryService();

  // State management
  CategoryState _state = CategoryState.initial;
  List<Category> _categories = [];
  String _errorMessage = '';
  bool _isRefreshing = false;

  // Getters
  CategoryState get state => _state;
  List<Category> get categories => _categories;
  String get errorMessage => _errorMessage;
  bool get isLoading => _state == CategoryState.loading;
  bool get hasError => _state == CategoryState.error;
  bool get hasData => _categories.isNotEmpty;
  bool get isRefreshing => _isRefreshing;

  /// Fetch categories from API
  Future<void> fetchCategories({bool showLoading = true}) async {
    if (showLoading) {
      _setState(CategoryState.loading);
    }

    try {
      final response = await _categoryService.getCategories();
      
      if (response.success) {
        _categories = response.data;
        _errorMessage = '';
        _setState(CategoryState.loaded);
      } else {
        _errorMessage = 'Failed to load categories';
        _setState(CategoryState.error);
      }
    } on CategoryException catch (e) {
      _errorMessage = e.message;
      _setState(CategoryState.error);
    } catch (e) {
      _errorMessage = 'An unexpected error occurred: ${e.toString()}';
      _setState(CategoryState.error);
    } finally {
      _isRefreshing = false;
    }
  }

  /// Refresh categories (pull-to-refresh)
  Future<void> refreshCategories() async {
    _isRefreshing = true;
    notifyListeners();
    await fetchCategories(showLoading: false);
  }

  /// Retry loading categories
  Future<void> retryFetchCategories() async {
    await fetchCategories();
  }

  /// Search categories locally
  List<Category> searchCategories(String query) {
    if (query.isEmpty) {
      return _categories;
    }
    
    return _categories.where((category) =>
      category.categoryName.toLowerCase().contains(query.toLowerCase())
    ).toList();
  }

  /// Get category by ID
  Category? getCategoryById(String id) {
    try {
      return _categories.firstWhere((category) => category.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Clear all data
  void clearData() {
    _categories = [];
    _errorMessage = '';
    _state = CategoryState.initial;
    _isRefreshing = false;
    notifyListeners();
  }

  /// Update state and notify listeners
  void _setState(CategoryState newState) {
    if (_state != newState) {
      _state = newState;
      notifyListeners();
    }
  }

  /// Check if categories need to be fetched
  bool get shouldFetchCategories => 
    _state == CategoryState.initial || 
    (_state == CategoryState.error && _categories.isEmpty);

  /// Get categories count
  int get categoriesCount => _categories.length;

  /// Check if specific category exists
  bool categoryExists(String categoryName) {
    return _categories.any((category) => 
      category.categoryName.toLowerCase() == categoryName.toLowerCase()
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}