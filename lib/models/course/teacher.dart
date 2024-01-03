class Teacher {
  final int id;
  final String name;
  final String avatarURL;
  final String graduate;
  final String bio;
  final String email;

  Teacher({
    required this.id,
    required this.name,
    required this.avatarURL,
    required this.graduate,
    required this.bio,
    required this.email,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: int.tryParse(json["id"].toString()) ?? 0,
      name: json["name"],
      avatarURL: json["avatarURL"],
      graduate: json["graduate"],
      bio: json["bio"],
      email: json["email"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "avatarURL": avatarURL,
        "graduate": graduate,
        "bio": bio,
        "email": email,
      };
}
