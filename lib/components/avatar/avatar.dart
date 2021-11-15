import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Map<AvatarSize, double> radiusSize = {
  AvatarSize.none: 0,
  AvatarSize.sm: 4,
  AvatarSize.md: 8,
  AvatarSize.lg: 12,
  AvatarSize.xlg: 16,
  AvatarSize.full: 1000,
};

enum AvatarSize { none, sm, md, lg, xlg, full }

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.imageUri,
    this.title,
    required this.size,
    this.radius = AvatarSize.full,
  }) : super(key: key);

  final double size;
  final String? imageUri;
  final String? title;
  final AvatarSize radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        image: imageUri != null
            ? DecorationImage(
                image: NetworkImage(imageUri!),
                fit: BoxFit.cover,
              )
            : null,
        borderRadius: BorderRadius.all(
          Radius.circular(
            radiusSize[radius]!,
          ),
        ),
      ),
      child: imageUri == null
          ? Center(
              child: Text(
                title!,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
