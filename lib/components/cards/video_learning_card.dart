part of component;

class VideoLearningCard extends StatelessWidget {
  final String title;
  final String level;
  final String imageUrl;
  final String videoDuration;
  final int countExercises;
  final int countStudents;
  final int countPlays;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding, margin;

  const VideoLearningCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.countExercises,
    required this.level,
    required this.countStudents,
    required this.countPlays,
    required this.videoDuration,
    required this.onPressed,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    const textGreyStyle = TextStyle(color: AppColors.grey, fontSize: 15);
    const textInVideoStyle = TextStyle(color: Colors.white, fontSize: 17);
    const radius = 20.00;

    return Padding(
      padding: margin ?? const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(radius),
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 1.5,
              ),
            ],
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 200.0,
                    width: context.screenWidth,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      errorWidget: (context, url, error) => const SizedBox(),
                      imageBuilder: (context, assetProvider) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(radius)),
                          child: FadeInImage(
                            placeholder: MemoryImage(kTransparentImage),
                            image: assetProvider,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.3),
                            Colors.black.withOpacity(0.6),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 12,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        Text(countPlays.toAbbreviatedString(), style: textInVideoStyle),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 19,
                    bottom: 12,
                    child: Text(videoDuration, style: textInVideoStyle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "${countExercises.toAbbreviatedString()} ${countExercises > 1 ? 'Exercises' : 'Exercise'}",
                          style: textGreyStyle,
                        ),
                        const DotContainer(),
                        Text(level, style: textGreyStyle),
                        const DotContainer(),
                        Text(
                          "${countStudents.toAbbreviatedString()} ${countStudents > 1 ? 'Students' : 'Student'}",
                          style: textGreyStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
