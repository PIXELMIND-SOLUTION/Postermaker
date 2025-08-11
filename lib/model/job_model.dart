class JobLocation {
  final String type;
  final List<double> coordinates;

  JobLocation({
    required this.type,
    required this.coordinates,
  });

  factory JobLocation.fromJson(Map<String, dynamic> json) {
    return JobLocation(
      type: json['type'] ?? '',
      coordinates: List<double>.from(json['coordinates'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'coordinates': coordinates,
    };
  }
}

class Job {
  final String id;
  final String image;
  final String companyName;
  final String role;
  final String locationName;
  final JobLocation location;
  final List<dynamic> jobDetails;
  final DateTime createdAt;
  final DateTime updatedAt;

  Job({
    required this.id,
    required this.image,
    required this.companyName,
    required this.role,
    required this.locationName,
    required this.location,
    required this.jobDetails,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['_id'] ?? '',
      image: json['image'] ?? '',
      companyName: json['companyName'] ?? '',
      role: json['role'] ?? '',
      locationName: json['locationName'] ?? '',
      location: JobLocation.fromJson(json['location'] ?? {}),
      jobDetails: json['jobDetails'] ?? [],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'image': image,
      'companyName': companyName,
      'role': role,
      'locationName': locationName,
      'location': location.toJson(),
      'jobDetails': jobDetails,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

class JobResponse {
  final bool success;
  final List<Job> jobs;

  JobResponse({
    required this.success,
    required this.jobs,
  });

  factory JobResponse.fromJson(Map<String, dynamic> json) {
    return JobResponse(
      success: json['success'] ?? false,
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((jobJson) => Job.fromJson(jobJson))
          .toList() ?? [],
    );
  }
}