import 'package:flutter/material.dart';

class HeaderWithAvatarNoTitle extends StatelessWidget {
  const HeaderWithAvatarNoTitle({
    Key? key,
    required this.icon,
    required this.imageUri,
  }) : super(key: key);

  final IconData icon;
  final String imageUri;
  static const double avatarChange = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          IconButton(
            icon: Icon(icon),
            iconSize: 40,
            onPressed: null,
          ),
          const Spacer(),
          CircleAvatar(
            backgroundImage: NetworkImage(imageUri),
            radius: avatarChange,
          ),
        ],
      ),
    );
  }
}
