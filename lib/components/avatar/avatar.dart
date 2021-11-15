import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Map<String, double> radiusSize = {
  "none": 0,
  "sm": 4,
  "md": 8,
  "lg": 12,
  "xlg": 16,
  "full": 1000,
};

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.radius = 'full',
    this.imageUri,
    this.title,
    required this.size,
  }) : super(key: key);

  final double size;
  final String? imageUri;
  final String? title;
  final String radius;

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
