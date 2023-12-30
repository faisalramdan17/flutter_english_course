import 'word.dart';

class Sentence {
  final String text;
  final Word word;

  Sentence({
    required this.text,
    required this.word,
  });

  factory Sentence.fromJson(Map<String, dynamic> json) {
    return Sentence(
      text: json["text"],
      word: Word.fromJson(json["word"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "text": text,
        "word": word.toJson(),
      };
}
