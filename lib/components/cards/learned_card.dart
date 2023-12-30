part of component;

class LearnedCard extends StatelessWidget {
  const LearnedCard({
    Key? key,
    required this.currentLearned,
    required this.targetLearned,
    this.onPressed,
  }) : super(key: key);

  final int currentLearned, targetLearned;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);

    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, bottom: 20, top: 8),
      child: InkWell(
        onTap: onPressed,
        borderRadius: borderRadius,
        child: Ink(
          padding: const EdgeInsets.all(20),
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color(0xFF2F80ED).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: SvgPicture.asset(
                  Assets.iconsSVG.calendar,
                  width: 50,
                  height: 50,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Learned today',
                        style: context.theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: currentLearned.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 28,
                                ),
                                children: [
                                  TextSpan(
                                    text: "/$targetLearned",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'minute',
                              style: context.theme.textTheme.headlineSmall?.copyWith(
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircularStepProgressIndicator(
                padding: 0,
                currentStep: currentLearned,
                totalSteps: targetLearned,
                selectedStepSize: 3.7,
                unselectedStepSize: 3.7,
                width: 60,
                height: 60,
                unselectedColor: const Color(0xFFEEF0F3),
                roundedCap: (_, __) => true,
                child: Center(
                  child: Text(
                    "${(currentLearned / targetLearned * 100).round()}%",
                    style: const TextStyle(
                      fontSize: 14.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
