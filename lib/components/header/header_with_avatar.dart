import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWithAvatar extends StatelessWidget {
  const HeaderWithAvatar({
    Key? key,
    this.isHeaderCentered = false,
    required this.headerTitle,
    required this.icon,
    required this.imageUri,
  }) : super(key: key);

  final bool isHeaderCentered;
  final String headerTitle;
  final IconData icon;
  final String imageUri;
  static const double avatarChange = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: avatarChange,
            backgroundImage: NetworkImage(imageUri),
          ),
          if (!isHeaderCentered)
            const SizedBox(
              width: 12.0,
            ),
          Text(
            headerTitle,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (!isHeaderCentered) const Spacer(),
          IconButton(
            icon: Icon(icon),
            iconSize: 40,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
