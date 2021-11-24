import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'avatar.dart';

class StackedAvatar extends StatelessWidget {
  const StackedAvatar({
    Key? key,
    required this.data,
    this.ltr = true,
  }) : super(key: key);

  final List<Map<String, String>> data;
  final bool ltr;
  final int maxAvatars = 4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Stack(
        children: data.mapIndexed(
          (index, data) {
            double left = !ltr ? (maxAvatars - index) * 25.0 : index * 25.0;
            if (index == maxAvatars) {
              return Positioned(
                left: left,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Avatar(
                    size: 50,
                    title: '+${(data.length - index).abs()}',
                    radius: AvatarSize.full,
                  ),
                ),
              );
            } else if (index > maxAvatars) {
              return const SizedBox(
                width: 0,
              );
            }

            return Positioned(
              left: left,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Avatar(
                  size: 50,
                  title: data['intial'],
                  imageUri: data['imageUri'],
                  radius: AvatarSize.full,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
