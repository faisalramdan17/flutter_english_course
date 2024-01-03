part of 'user.dart';

class UserProfile {
  final String firstname;
  final String? lastname;
  final String username;
  final String email;
  final String? phone;
  final String? avatarURL;
  final DateTime? updatedAt;

  UserProfile({
    required this.firstname,
    this.lastname,
    required this.username,
    required this.email,
    this.phone,
    this.avatarURL,
    this.updatedAt,
  });

  UserProfile copyWith({
    String? firstname,
    String? lastname,
    String? username,
    String? email,
    String? phone,
    String? avatarURL,
    DateTime? updatedAt,
  }) =>
      UserProfile(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        avatarURL: avatarURL ?? this.avatarURL,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      firstname: json["firstname"],
      lastname: json["lastname"],
      username: json["username"],
      email: json["email"],
      phone: json["phone"],
      avatarURL: json["avatarURL"],
      updatedAt: DateTime.tryParse(json["updatedAt"].toString())?.toLocal(),
    );
  }

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "username": username,
        "email": email,
        "phone": phone,
        "updatedAt": updatedAt?.toUtc(),
      };
}
