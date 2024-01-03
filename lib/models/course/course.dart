import 'teacher.dart';

abstract class Course {
  final int id;
  final String title;
  final String? description;
  final String level;
  final String imageUrl;
  final Teacher teacher;
  final int countStudents;
  final DateTime createdAt;

  Course({
    required this.id,
    required this.title,
    this.description,
    required this.level,
    required this.imageUrl,
    required this.teacher,
    this.countStudents = 0,
    required this.createdAt,
  });
}
