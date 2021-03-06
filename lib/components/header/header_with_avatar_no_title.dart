import 'package:flutter/material.dart';
import 'package:senzu_ui_flutter/components/avatar/avatar.dart';

class HeaderWithAvatarNoTitle extends StatelessWidget
    implements PreferredSizeWidget {
  const HeaderWithAvatarNoTitle({
    Key? key,
    required this.icon,
    required this.imageUri,
    required this.avatarSize,
  }) : super(key: key);

  final IconData icon;
  final String imageUri;
  final AvatarSize avatarSize;
  static const double avatarChange = 25.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(icon),
        iconSize: 40,
        onPressed: null,
      ),
      toolbarHeight: 65.0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Avatar(
            size: 50,
            radius: avatarSize,
            imageUri: imageUri,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
