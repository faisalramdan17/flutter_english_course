import 'comment.dart';
import 'course.dart';
import 'teacher.dart';

class VideoCourse extends Course {
  final String previewVideoUrl;
  final String previewVideoDuration;
  final List<Category> categories;
  final List<Lesson> lessons;
  final List<Comment> comments;
  final int countPreviewVideoPlays;

  VideoCourse({
    required super.id,
    required super.title,
    required super.description,
    required super.level,
    required super.imageUrl,
    required super.teacher,
    required this.previewVideoUrl,
    required this.previewVideoDuration,
    this.categories = const <Category>[],
    this.lessons = const <Lesson>[],
    this.comments = const <Comment>[],
    super.countStudents = 0,
    this.countPreviewVideoPlays = 0,
    required super.createdAt,
  });

  factory VideoCourse.fromJson(Map<String, dynamic> json) {
    return VideoCourse(
      id: int.tryParse(json["id"].toString()) ?? 0,
      title: json["title"],
      description: json["description"],
      level: json["level"],
      imageUrl: json["imageUrl"],
      teacher: Teacher.fromJson(json["teacher"]),
      previewVideoUrl: json["previewVideoUrl"],
      previewVideoDuration: json["previewVideoDuration"],
      categories: List<Category>.from(json["categories"]?.map((x) => Category.fromJson(x)) ?? []),
      lessons: List<Lesson>.from(json["lessons"]?.map((x) => Lesson.fromJson(x)) ?? []),
      comments: List<Comment>.from(json["comments"]?.map((x) => Comment.fromJson(x)) ?? []),
      countStudents: int.tryParse(json["countStudents"].toString()) ?? 0,
      countPreviewVideoPlays: int.tryParse(json["countPreviewVideoPlays"].toString()) ?? 0,
      createdAt: DateTime.parse(json["createdAt"].toString()),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "level": level,
        "imageUrl": imageUrl,
        "teacher": teacher.toJson(),
        "previewVideoUrl": previewVideoUrl,
        "previewVideoDuration": previewVideoDuration,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "lessons": List<dynamic>.from(lessons.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "countStudents": countStudents,
        "countPreviewVideoPlays": countPreviewVideoPlays,
        "createdAt": createdAt,
      };
}

class Category {
  final int id;
  final String name;
  final String slug;
  final String imagePath;
  final String? description;

  Category({
    required this.id,
    required this.name,
    required this.slug,
    required this.imagePath,
    this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: int.tryParse(json["id"].toString()) ?? 0,
      name: json["name"],
      slug: json["slug"],
      imagePath: json["imagePath"],
      description: json["description"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "imagePath": imagePath,
        "description": description,
      };
}

class Lesson {
  final int id;
  final int number;
  final String title;
  final String imageUrl;
  final String videoUrl;
  final String videoDuration;
  final int countVideoPlays;
  final double progress;

  Lesson({
    required this.id,
    required this.number,
    required this.title,
    required this.imageUrl,
    required this.videoUrl,
    required this.videoDuration,
    required this.countVideoPlays,
    required this.progress,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: int.tryParse(json["id"].toString()) ?? 0,
      number: int.tryParse(json["number"].toString()) ?? 0,
      title: json["title"],
      imageUrl: json["imageUrl"],
      videoUrl: json["videoUrl"],
      videoDuration: json["videoDuration"],
      countVideoPlays: json["countVideoPlays"],
      progress: double.tryParse(json["progress"].toString()) ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "title": title,
        "imageUrl": imageUrl,
        "videoUrl": videoUrl,
        "videoDuration": videoDuration,
        "countVideoPlays": countVideoPlays,
        "progress": progress,
      };
}
