class Word {
  final int id;
  final String name;
  final String phonological;
  final List<String> meanings;
  final String level;
  final String progress;

  Word({
    required this.id,
    required this.name,
    required this.phonological,
    required this.meanings,
    required this.level,
    required this.progress,
  });

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      id: int.tryParse(json["id"].toString()) ?? 0,
      name: json["name"],
      phonological: json["phonological"],
      meanings: List<String>.from(json["meanings"]?.map((x) => x) ?? []),
      level: json["level"],
      progress: json["progress"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phonological": phonological,
        "meanings": List<dynamic>.from(meanings.map((x) => x)),
        "level": level,
        "progress": progress,
      };
}
