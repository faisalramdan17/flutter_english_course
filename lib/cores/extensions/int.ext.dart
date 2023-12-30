part of core;

extension IntExtension on int {
  String toAbbreviatedString() {
    return NumberFormat.compact().format(this);
  }
}
