import 'package:flutter/material.dart';
import 'package:flutter_english_course/cores/cores.dart';

class ProfileView extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile Screen",
        style: context.theme.textTheme.titleLarge,
      ),
    );
  }
}
