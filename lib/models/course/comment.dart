import 'package:flutter_english_course/models/user/user.dart';

class Comment {
  final int id;
  final String text;
  final User user;
  final DateTime? createdAt;

  Comment({
    required this.id,
    required this.text,
    required this.user,
    required this.createdAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: int.tryParse(json["id"].toString()) ?? 0,
      text: json["text"],
      user: User.fromJson(json["user"]),
      createdAt: DateTime.parse(json["createdAt"].toString()).toLocal(),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "user": user.toJson(),
        "createdAt": createdAt?.toUtc(),
      };
}
