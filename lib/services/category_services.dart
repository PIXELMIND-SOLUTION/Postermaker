import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:poster_maker/model/category_model.dart';
 // Update with your actual path

class CategoryService {
  final String baseUrl = 'https://postmaker-backend-1.onrender.com/api/category';
  
  // static const Duration _timeoutDuration = Duration(seconds: 30);


  Map<String, String> get _headers => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  /// Fetch all categories from the API
  Future<CategoryResponse> getCategories() async {
    try {
      final response = await http
          .get(
            Uri.parse(baseUrl),
            headers: _headers,
          );
          // .timeout(_timeoutDuration);

      return _handleResponse(response);
    } on SocketException {
      throw CategoryException('No internet connection. Please check your network.');
    } on http.ClientException {
      throw CategoryException('Failed to connect to server. Please try again.');
    } on FormatException {
      throw CategoryException('Invalid response format received from server.');
    } catch (e) {
      throw CategoryException('An unexpected error occurred: ${e.toString()}');
    }
  }

  /// Handle HTTP response and parse data
  CategoryResponse _handleResponse(http.Response response) {

      print('category response ${response.statusCode}');

    switch (response.statusCode) {
      case 200:
        try {
          final Map<String, dynamic> jsonData = json.decode(response.body);
          return CategoryResponse.fromJson(jsonData);
        } catch (e) {
          throw CategoryException('Failed to parse server response.');
        }
      case 400:
        throw CategoryException('Bad request. Please check your data.');
      case 401:
        throw CategoryException('Unauthorized access. Please login again.');
      case 403:
        throw CategoryException('Access forbidden. You don\'t have permission.');
      case 404:
        throw CategoryException('Categories not found.');
      case 500:
        throw CategoryException('Server error. Please try again later.');
      case 502:
      case 503:
      case 504:
        throw CategoryException('Server temporarily unavailable. Please try again.');
      default:
        throw CategoryException('Request failed with status: ${response.statusCode}');
    }
  }

  /// Get category by ID (if needed for future use)
  Future<Category?> getCategoryById(String categoryId) async {
    try {
      final response = await getCategories();
      if (response.success && response.data.isNotEmpty) {
        try {
          return response.data.firstWhere((category) => category.id == categoryId);
        } catch (e) {
          return null; // Category not found
        }
      }
      return null;
    } catch (e) {
      throw CategoryException('Failed to fetch category: ${e.toString()}');
    }
  }

  /// Search categories by name (if needed for future use)
  Future<List<Category>> searchCategories(String searchTerm) async {
    try {
      final response = await getCategories();
      if (response.success && response.data.isNotEmpty) {
        return response.data
            .where((category) => 
                category.categoryName.toLowerCase().contains(searchTerm.toLowerCase()))
            .toList();
      }
      return [];
    } catch (e) {
      throw CategoryException('Failed to search categories: ${e.toString()}');
    }
  }
}

/// Custom exception class for category-related errors
class CategoryException implements Exception {
  final String message;
  
  const CategoryException(this.message);
  
  @override
  String toString() => 'CategoryException: $message';
}