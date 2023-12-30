import 'package:flutter/material.dart';
import 'package:flutter_english_course/components/components.dart';
import 'package:flutter_english_course/cores/cores.dart';
import 'package:flutter_english_course/dummies/learnings_dummy.dart';
import 'package:flutter_english_course/models/learning/learning.dart';
import 'package:ionicons/ionicons.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/home';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final tabItems = <String>['Recommend', 'Hot', 'Movies', 'Story Telling', 'Traveling', 'Business', 'Grammar'];
  late final selectedTabNotifier = ValueNotifier<String>(tabItems.first);
  final learningsNotifier = ValueNotifier<List<Learning>>([]);

  @override
  void initState() {
    super.initState();

    loadData();

    selectedTabNotifier.addListener(() {
      loadData(
        category: selectedTabNotifier.value,
      );
    });
  }

  @override
  void dispose() {
    selectedTabNotifier.dispose();
    learningsNotifier.dispose();
    super.dispose();
  }

  Future<void> loadData({String? category}) async {
    final learnings = List<Learning>.from(
      learningsJSON.map((e) => Learning.fromJson(e)),
    );

    if (category != null) {
      learnings.removeWhere(
        (it) => !it.categories.contains(category),
      );
    } else {
      selectedTabNotifier.value = tabItems.first;
    }

    learningsNotifier.value = learnings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        centerTitle: false,
        title: Text(
          'Morning!',
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
        child: NestedScrollView(
          headerSliverBuilder: (_, __) {
            return [
              SliverPadding(
                padding: const EdgeInsets.only(top: 10),
                sliver: SliverToBoxAdapter(
                  child: LearnedCard(
                    onPressed: () {},
                    currentLearned: 3,
                    targetLearned: 10,
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              ValueListenableBuilder<String>(
                valueListenable: selectedTabNotifier,
                builder: (_, currentItem, __) {
                  return _HomeTabBar(
                    items: tabItems,
                    currentItem: currentItem,
                    onChanged: (value) => selectedTabNotifier.value = value,
                  );
                },
              ),
              ValueListenableBuilder<List<Learning>>(
                valueListenable: learningsNotifier,
                builder: (_, learnings, __) {
                  return _HomeLearningList(
                    learnings: learnings,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeTabBar extends StatelessWidget {
  const _HomeTabBar({
    required this.items,
    required this.currentItem,
    required this.onChanged,
  });

  final List<String> items;
  final String currentItem;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 35,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: items.map(
            (item) {
              bool isActivated = currentItem.toString().toLowerCase() == item.toLowerCase();
              return GestureDetector(
                onTap: () => onChanged(item),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 450),
                  padding: const EdgeInsets.only(bottom: 4.0, right: 15, left: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    color: !isActivated ? null : context.theme.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 19.5,
                        color: !isActivated ? null : Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class _HomeLearningList extends StatelessWidget {
  const _HomeLearningList({required this.learnings});

  final List<Learning> learnings;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: learnings
            .map(
              (item) => VideoLearningCard(
                onPressed: () {},
                title: item.title,
                level: item.level,
                imageUrl: item.imageUrl,
                videoDuration: item.videoDuration,
                countExercises: item.countExercises,
                countStudents: item.countStudents,
                countPlays: item.countPlays,
              ),
            )
            .toList(),
      ),
    );
  }
}
