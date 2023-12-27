import 'package:flutter/material.dart';
import 'package:flutter_english_course/cores/cores.dart';

class CoursesView extends StatelessWidget {
  static const String routeName = '/courses';

  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Courses Screen",
        style: context.theme.textTheme.titleLarge,
      ),
    );
  }
}
