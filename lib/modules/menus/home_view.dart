import 'package:flutter/material.dart';
import 'package:flutter_english_course/cores/cores.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home Screen",
        style: context.theme.textTheme.titleLarge,
      ),
    );
  }
}
