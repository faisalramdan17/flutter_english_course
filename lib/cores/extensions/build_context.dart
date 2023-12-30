part of core;

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;
}
