import 'package:flutter/material.dart';
import 'package:flutter_english_course/components/components.dart';
import 'package:flutter_english_course/cores/cores.dart';
import 'package:flutter_english_course/modules/menus/courses_view.dart';
import 'package:flutter_english_course/modules/menus/home_view.dart';
import 'package:flutter_english_course/modules/menus/live_courses_view.dart';
import 'package:flutter_english_course/modules/menus/profile_view.dart';
import 'package:go_router/go_router.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    required this.child,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('AppNavBar'));

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: AppBottomBar(
        opacity: .2,
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int? index) => _onTap(context, index ?? 0),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(23)),
        elevation: 8,
        hasInk: true, //new, gives a cute ink effect
        items: _navigationItems,
      ),
    );
  }

  static const _navigationItems = <AppBottomBarItem>[
    AppBottomBarItem(
      icon: Icon(AppIcons.home),
      activeIcon: Icon(AppIcons.homeAlt),
      title: Text("Home"),
    ),
    AppBottomBarItem(
      icon: Icon(AppIcons.courses),
      activeIcon: Icon(AppIcons.coursesAlt),
      title: Text("Courses"),
    ),
    AppBottomBarItem(
      icon: Icon(AppIcons.live),
      activeIcon: Icon(AppIcons.liveAlt),
      title: Text("Live"),
    ),
    AppBottomBarItem(
      icon: Icon(AppIcons.profile),
      activeIcon: Icon(AppIcons.profileAlt),
      title: Text("Profile"),
    )
  ];

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    if (location.startsWith(HomeView.routeName)) {
      return 0;
    }
    if (location.startsWith(CoursesView.routeName)) {
      return 1;
    }
    if (location.startsWith(LiveCoursesView.routeName)) {
      return 2;
    }
    if (location.startsWith(ProfileView.routeName)) {
      return 3;
    }

    return 0;
  }

  /// Navigate to the current location of the branch at the provided index when
  /// tapping an item in the BottomNavigationBar.
  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(HomeView.routeName);
        break;
      case 1:
        GoRouter.of(context).go(CoursesView.routeName);
        break;
      case 2:
        GoRouter.of(context).go(LiveCoursesView.routeName);
        break;
      case 3:
        GoRouter.of(context).go(ProfileView.routeName);
        break;
    }
  }
}
