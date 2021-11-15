import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senzu_ui_flutter/components/avatar/avatar.dart';

class HeaderWithAvatarAndSubheading extends StatelessWidget
    implements PreferredSizeWidget {
  const HeaderWithAvatarAndSubheading({
    Key? key,
    this.isHeaderCentered = false,
    required this.headerTitle,
    required this.subTitle,
    required this.icon,
    required this.imageUri,
  }) : super(key: key);

  final bool isHeaderCentered;
  final String headerTitle;
  final String subTitle;
  final IconData icon;
  final String imageUri;
  static const double avatarChange = 25.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: isHeaderCentered,
      title: Column(
        children: [
          Text(
            headerTitle,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      toolbarHeight: 65,
      leadingWidth: 65,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Avatar(
          size: 50,
          radius: 'full',
          imageUri: imageUri,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(icon),
          iconSize: 40,
          onPressed: null,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
