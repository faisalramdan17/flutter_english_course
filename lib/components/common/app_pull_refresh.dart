part of component;

class AppPullRefresh extends StatelessWidget {
  const AppPullRefresh({
    required this.onRefresh,
    required this.child,
    this.color = AppColors.blue,
    this.backgroundColor = AppColors.white,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final Future<void> Function() onRefresh;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      onRefresh: onRefresh,
      showChildOpacityTransition: false,
      color: color,
      backgroundColor: backgroundColor,
      height: 87,
      springAnimationDurationInMilliseconds: 600,
      animSpeedFactor: 1.2,
      child: child,
    );
  }
}
