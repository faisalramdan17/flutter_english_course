import 'package:flutter/material.dart';
import 'package:flutter_english_course/components/components.dart';
import 'package:flutter_english_course/cores/cores.dart';
import 'package:flutter_english_course/dummies/categories_dummy.dart';
import 'package:flutter_english_course/dummies/video_courses_dummy.dart';
import 'package:flutter_english_course/models/course/video_course.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

class CoursesView extends StatefulWidget {
  static const String routeName = '/courses';

  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  final categories = <Category>[];
  final newCourses = <VideoCourse>[];
  final popularCourses = <VideoCourse>[];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final now = DateTime.now();
    final categories = categoriesJSON.map((e) => Category.fromJson(e));
    final courses = videoCoursesJSON.map((e) => VideoCourse.fromJson(e));
    final newCourses = courses.where((e) => now.difference(e.createdAt).inDays < 17);
    final popularCourses = courses.where((e) => e.countStudents > 17000);

    this.categories
      ..clear()
      ..addAll(categories);
    this.newCourses
      ..clear()
      ..addAll(newCourses);
    this.popularCourses
      ..clear()
      ..addAll(popularCourses);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        centerTitle: false,
        title: Text(
          'Courses',
          style: context.theme.textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search),
          ),
        ],
      ),
      body: AppPullRefresh(
        onRefresh: loadData,
        child: SingleChildScrollView(
          primary: true,
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 25, top: 6),
          child: Column(
            children: [
              _CategoriesListView(
                categories: categories,
              ),
              _NewCoursesListView(
                newCourses: newCourses,
              ),
              _PopularCoursesListView(
                popularCourses: popularCourses,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoriesListView extends StatelessWidget {
  const _CategoriesListView({
    required this.categories,
  });

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: categories
            .map(
              (item) => _MenuButton(
                onPressed: () {},
                title: item.name,
                imagePath: item.imagePath,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton({
    required this.title,
    required this.imagePath,
    required this.onPressed,
  });

  final String title;
  final String imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    const radius = 17.00;

    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(radius),
          child: Ink(
            padding: const EdgeInsets.all(12),
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: const Color(0xFF94BFF8).withOpacity(0.3),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: SvgPicture.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 13.5),
          ),
        ),
      ],
    );
  }
}

class _NewCoursesListView extends StatelessWidget {
  const _NewCoursesListView({
    required this.newCourses,
  });

  final List<VideoCourse> newCourses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SubHeader(
              title: 'New Courses',
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            width: context.screenWidth,
            child: ListView(
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              scrollDirection: Axis.horizontal,
              children: newCourses
                  .map(
                    (item) => NewCourseCard(
                      onPressed: () {},
                      title: item.title,
                      countPlays: item.countPreviewVideoPlays,
                      imageUrl: item.imageUrl,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _PopularCoursesListView extends StatelessWidget {
  const _PopularCoursesListView({
    required this.popularCourses,
  });

  final List<VideoCourse> popularCourses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
      child: Column(
        children: [
          SubHeader(
            title: 'Popular Courses',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          ListView(
            primary: false,
            shrinkWrap: true,
            children: popularCourses
                .map(
                  (item) => VideoCourseCard(
                    onPressed: () {},
                    item: item,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
