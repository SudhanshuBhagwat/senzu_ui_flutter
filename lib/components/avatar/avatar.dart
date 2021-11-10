import 'package:flutter/material.dart';

const Map<String, double> radiusSize = {
  "full": 1000,
  "sm": 6,
  "md": 12,
  "lg": 18,
};

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.radius = 'full',
    required this.imageUri,
    required this.size,
  }) : super(key: key);

  final double size;
  final String radius;
  final String imageUri;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        image: DecorationImage(
          image: NetworkImage(imageUri),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            radiusSize[radius]!,
          ),
        ),
      ),
    );
  }
}
