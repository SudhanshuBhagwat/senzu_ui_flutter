import 'package:flutter/material.dart';
import 'package:senzu_ui_flutter/components/avatar/avatar.dart';

class HeaderWithGreeting extends StatelessWidget {
  const HeaderWithGreeting({
    Key? key,
    required this.greeting,
    required this.title,
    required this.imageUri,
  }) : super(key: key);

  final String imageUri;
  final String greeting;
  final String title;
  static const double avatarChange = 25.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 100.0,
      leadingWidth: 600.0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$greeting,',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Avatar(
                size: 70,
                radius: 'full',
                imageUri: imageUri,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
