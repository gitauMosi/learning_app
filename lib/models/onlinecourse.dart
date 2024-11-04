class OnlineCourse {
  final String id;
  final String title;
  final String description;
  final String instructor;
  final int duration; // Duration in minutes
  final double rating;
  final List<Lesson> lessons;
  final String category;
  final DateTime releaseDate;
  final bool isFree;

  OnlineCourse({
    required this.id,
    required this.title,
    required this.description,
    required this.instructor,
    required this.duration,
    required this.rating,
    required this.lessons,
    required this.category,
    required this.releaseDate,
    this.isFree = false,
  });

  factory OnlineCourse.fromJson(Map<String, dynamic> json) {
    return OnlineCourse(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      instructor: json['instructor'],
      duration: json['duration'],
      rating: (json['rating'] as num).toDouble(),
      lessons: (json['lessons'] as List).map((e) => Lesson.fromJson(e)).toList(),
      category: json['category'],
      releaseDate: DateTime.parse(json['releaseDate']),
      isFree: json['isFree'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'instructor': instructor,
      'duration': duration,
      'rating': rating,
      'lessons': lessons.map((e) => e.toJson()).toList(),
      'category': category,
      'releaseDate': releaseDate.toIso8601String(),
      'isFree': isFree,
    };
  }
}

class Lesson {
  final String title;
  final String videoUrl;
  final int duration; // Duration in minutes
  final String description;

  Lesson({
    required this.title,
    required this.videoUrl,
    required this.duration,
    required this.description,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      title: json['title'],
      videoUrl: json['videoUrl'],
      duration: json['duration'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'videoUrl': videoUrl,
      'duration': duration,
      'description': description,
    };
  }
}
