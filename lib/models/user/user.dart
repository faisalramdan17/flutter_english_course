part 'user_leveling.dart';
part 'user_profile.dart';

class User {
  final String uid;
  final String membership;
  final UserProfile profile;
  final UserLeveling leveling;
  final DateTime createdAt;

  User({
    required this.uid,
    required this.membership,
    required this.profile,
    required this.leveling,
    required this.createdAt,
  });

  User copyWith({
    String? uid,
    String? membership,
    UserProfile? profile,
    UserLeveling? leveling,
    DateTime? createdAt,
  }) =>
      User(
        uid: uid ?? this.uid,
        membership: membership ?? this.membership,
        profile: profile ?? this.profile,
        leveling: leveling ?? this.leveling,
        createdAt: createdAt ?? this.createdAt,
      );

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uid: json["uid"],
      membership: json["membership"],
      profile: UserProfile.fromJson(json["profile"]),
      leveling: UserLeveling.fromJson(json["leveling"]),
      createdAt: DateTime.parse(json["createdAt"].toString()).toLocal(),
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "membership": membership,
        "profile": profile.toJson(),
        "leveling": leveling.toJson(),
        "createdAt": createdAt.toUtc(),
      };
}
