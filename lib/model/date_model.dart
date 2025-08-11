class DueDate {
  final String id;
  final String image;
  final DateTime dueDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  DueDate({
    required this.id,
    required this.image,
    required this.dueDate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DueDate.fromJson(Map<String, dynamic> json) {
    return DueDate(
      id: json['_id'] ?? '',
      image: json['image'] ?? '',
      dueDate: DateTime.parse(json['dueDate']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'image': image,
      'dueDate': dueDate.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // Helper methods for filtering dates
  bool isToday() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dueDateDay = DateTime(dueDate.year, dueDate.month, dueDate.day);
    return dueDateDay.isAtSameMomentAs(today);
  }

  bool isThisMonth() {
    final now = DateTime.now();
    return dueDate.year == now.year && dueDate.month == now.month;
  }

  bool isNextMonth() {
    final now = DateTime.now();
    final nextMonth = DateTime(now.year, now.month + 1);
    return dueDate.year == nextMonth.year && dueDate.month == nextMonth.month;
  }

  // Helper method to get days remaining
  int get daysRemaining {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dueDateDay = DateTime(dueDate.year, dueDate.month, dueDate.day);
    return dueDateDay.difference(today).inDays;
  }

  // Helper method to check if overdue
  bool get isOverdue {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dueDateDay = DateTime(dueDate.year, dueDate.month, dueDate.day);
    return dueDateDay.isBefore(today);
  }
}