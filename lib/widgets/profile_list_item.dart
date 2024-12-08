import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    this.title = 'Vladimir Petkovic',
    this.description = 'an.email.address@gmail.com',
    this.imageProvider,
    this.onPressed,
    super.key,
  });

  final String title;
  final String description;
  final ImageProvider? imageProvider;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(24),
      child: Row(
        children: [
          CircleAvatar(
            foregroundImage: imageProvider ??
                const AssetImage(
                  'assets/images/profile-picture.png',
                ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                Text(description, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
          if (onPressed != null) ...[
            const Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
