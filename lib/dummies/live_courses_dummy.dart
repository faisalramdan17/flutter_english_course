import 'teachers_dummy.dart';

final liveCoursesJSON = [
  {
    "id": 1,
    "level": "Beginner",
    "teacher": teachersJSON.firstWhere((element) => element["id"] == 2),
    "title": "How to ask for directions",
    "liveStreamingURL":
        "https://assets.mixkit.co/videos/preview/mixkit-a-woman-petting-and-talking-with-her-cat-1544-large.mp4",
    "liveDuration": "17 mins",
    "liveTime": DateTime(DateTime.now().year, 9, 9, 9).toIso8601String(), // "12-18  9:00 am",
    "imageUrl": "https://images.unsplash.com/photo-1543269664-56d93c1b41a6?w=1080",
    "countStudents": 83227,
    "createdAt": DateTime.now().subtract(const Duration(days: 30)).toIso8601String(),
  },
  {
    "id": 1,
    "level": "Beginner",
    "teacher": teachersJSON.firstWhere((element) => element["id"] == 1),
    "title": "How to tell your story",
    "liveStreamingURL":
        "https://assets.mixkit.co/videos/preview/mixkit-family-walking-together-in-nature-39767-large.mp4",
    "liveTime": DateTime(DateTime.now().year, 10, 17, 10).toIso8601String(), // "12-18  9:00 am",
    "liveDuration": "17 mins",
    "imageUrl": "https://images.unsplash.com/photo-1597422232698-1a27a1289cea?w=1080",
    "countStudents": 83227,
    "createdAt": DateTime.now().subtract(const Duration(days: 30)).toIso8601String(),
  },
  {
    "id": 1,
    "level": "Beginner",
    "teacher": teachersJSON.firstWhere((element) => element["id"] == 1),
    "title": "Would you eat weird foods?",
    "liveTime": DateTime(DateTime.now().year, 11, 10, 15).toIso8601String(), // "12-18  9:00 am",
    "liveDuration": "17 mins",
    "liveStreamingURL": "https://assets.mixkit.co/videos/preview/mixkit-girl-taking-the-sun-in-a-pool-1264-large.mp4",
    "imageUrl": "https://images.unsplash.com/photo-1575177990047-1a6a4d211486?w=1080",
    "countStudents": 83227,
    "createdAt": DateTime.now().subtract(const Duration(days: 30)).toIso8601String(),
  },
  {
    "id": 1,
    "level": "Beginner",
    "teacher": teachersJSON.firstWhere((element) => element["id"] == 2),
    "title": "Tips to avoid burnout",
    "liveTime": DateTime(DateTime.now().year, 12, 18, 20).toIso8601String(), // "12-18  9:00 am",
    "liveDuration": "17 mins",
    "liveStreamingURL": "https://assets.mixkit.co/videos/preview/mixkit-woman-in-a-floral-shirt-dancing-1228-large.mp4",
    "imageUrl": "https://images.unsplash.com/photo-1472068996216-8c972a0af9bd?w=1080",
    "countStudents": 83227,
    "createdAt": DateTime.now().subtract(const Duration(days: 30)).toIso8601String(),
  },
];
