import 'package:flutter/material.dart';

class BreadcrumbsItem extends StatelessWidget {
  const BreadcrumbsItem({
    Key? key,
    this.showIcon = true,
    required this.icon,
    required this.text,
    required this.outlined,
  }) : super(key: key);

  final bool showIcon;
  final Icon icon;
  final Text text;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    if (outlined) {
      if (showIcon) {
        return OutlinedButton.icon(
          onPressed: () {},
          icon: icon,
          label: text,
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Colors.black,
            ),
            side: MaterialStateProperty.all(
              const BorderSide(
                width: 1.0,
                color: Colors.black,
              ),
            ),
          ),
        );
      }

      return OutlinedButton(
        onPressed: () {},
        child: text,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            Colors.black,
          ),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 1.0,
              color: Colors.black,
            ),
          ),
        ),
      );
    }

    if (showIcon) {
      return TextButton.icon(
        onPressed: () {},
        icon: icon,
        label: text,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            Colors.black,
          ),
        ),
      );
    }

    return TextButton(
      onPressed: () {},
      child: text,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          Colors.black,
        ),
      ),
    );
  }
}
