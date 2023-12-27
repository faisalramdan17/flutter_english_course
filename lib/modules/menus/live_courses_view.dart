import 'package:flutter/material.dart';
import 'package:flutter_english_course/cores/cores.dart';

class LiveCoursesView extends StatelessWidget {
  static const String routeName = '/live-courses';

  const LiveCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Live Courses Screen",
        style: context.theme.textTheme.titleLarge,
      ),
    );
  }
}
