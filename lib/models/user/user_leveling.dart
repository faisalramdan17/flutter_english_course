part of 'user.dart';

class UserLeveling {
  final String? name;
  final int? level;
  final int? exp;
  final int? progress;
  final int? goal;

  UserLeveling({
    this.name,
    this.level,
    this.exp,
    this.progress,
    this.goal,
  });

  UserLeveling copyWith({
    String? name,
    int? level,
    int? exp,
    int? progress,
    int? goal,
  }) =>
      UserLeveling(
        name: name ?? this.name,
        level: level ?? this.level,
        exp: exp ?? this.exp,
        progress: progress ?? this.progress,
        goal: goal ?? this.goal,
      );

  factory UserLeveling.fromJson(Map<String, dynamic> json) {
    return UserLeveling(
      name: json["name"],
      level: int.tryParse(json["level"].toString()) ?? 0,
      exp: int.tryParse(json["exp"].toString()) ?? 0,
      progress: int.tryParse(json["progress"].toString()) ?? 0,
      goal: int.tryParse(json["goald"].toString()) ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "level": level,
        "exp": exp,
        "progress": progress,
        "goal": goal,
      };
}
