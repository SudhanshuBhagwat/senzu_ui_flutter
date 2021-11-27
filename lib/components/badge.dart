import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    required this.icon,
    this.showBadge = true,
    this.badgeText = '',
    this.boxShape = BoxShape.circle,
    this.badgeColor = Colors.red,
    this.iconSize = 40,
  }) : super(key: key);

  final bool showBadge;
  final String badgeText;
  final IconData icon;
  final BoxShape boxShape;
  final Color badgeColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      children: [
        IconButton(
          alignment: Alignment.center,
          iconSize: iconSize,
          icon: Icon(icon),
          onPressed: () {},
        ),
        if (showBadge)
          Positioned(
            right: 5,
            child: Container(
              child: Text(
                badgeText,
                style: const TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: badgeColor,
                shape: boxShape,
              ),
            ),
          ),
      ],
    );
  }
}
