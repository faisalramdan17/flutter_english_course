import 'sentence.dart';

class Learning {
  final int id;
  final String title;
  final String level;
  final List<String> categories;
  final String imageUrl;
  final String videoUrl;
  final String videoDuration;
  final int countExercises;
  final int countStudents;
  final int countPlays;
  final int countViews;
  final int countLikes;
  final int countComments;
  final List<Sentence> sentences;

  Learning({
    required this.id,
    required this.title,
    required this.level,
    this.categories = const <String>[],
    required this.imageUrl,
    required this.videoUrl,
    required this.videoDuration,
    this.countExercises = 0,
    this.countStudents = 0,
    this.countPlays = 0,
    this.countViews = 0,
    this.countLikes = 0,
    this.countComments = 0,
    this.sentences = const <Sentence>[],
  });

  factory Learning.fromJson(Map<String, dynamic> json) {
    return Learning(
      id: int.tryParse(json["id"].toString()) ?? 0,
      title: json["title"],
      level: json["level"],
      categories: json["categories"],
      imageUrl: json["imageUrl"],
      videoUrl: json["videoUrl"],
      videoDuration: json["videoDuration"],
      countExercises: int.tryParse(json["countExercises"].toString()) ?? 0,
      countStudents: int.tryParse(json["countStudents"].toString()) ?? 0,
      countPlays: int.tryParse(json["countPlays"].toString()) ?? 0,
      countViews: int.tryParse(json["countViews"].toString()) ?? 0,
      countLikes: int.tryParse(json["countLikes"].toString()) ?? 0,
      countComments: int.tryParse(json["countComments"].toString()) ?? 0,
      sentences: List<Sentence>.from(json["sentences"]?.map((x) => Sentence.fromJson(x)) ?? []),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "level": level,
        "imageUrl": imageUrl,
        "videoUrl": videoUrl,
        "videoDuration": videoDuration,
        "countExercises": countExercises,
        "countStudents": countStudents,
        "countPlays": countPlays,
        "countViews": countViews,
        "countLikes": countLikes,
        "countComments": countComments,
        "sentences": List<dynamic>.from(sentences.map((x) => x.toJson())),
      };
}
