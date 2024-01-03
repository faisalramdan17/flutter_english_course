part of component;

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
    this.title,
    this.titleStyle,
    this.subtitle,
    this.subtitleStyle,
    this.avatarURL,
    this.maxRadius = 12,
    this.expanded = true,
    this.onPressed,
  }) : super(key: key);

  final String? title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final TextStyle? subtitleStyle;
  final String? avatarURL;
  final double? maxRadius;
  final bool expanded;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.only(top: 1.0, bottom: 1.0, right: 1.0),
        child: Row(
          mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: avatarURL.toString(),
              errorWidget: (context, url, error) => CircleAvatar(
                maxRadius: maxRadius,
                child: const Icon(
                  Icons.person,
                  size: 17,
                  color: AppColors.appGray3,
                ),
              ),
              imageBuilder: (context, imageProvider) => CircleAvatar(
                maxRadius: maxRadius,
                backgroundImage: imageProvider,
              ),
            ),
            if (title != null)
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(title!, style: titleStyle ?? p15.grey),
                      if (subtitle != null) Text(subtitle!, style: subtitleStyle ?? p11.grey),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
