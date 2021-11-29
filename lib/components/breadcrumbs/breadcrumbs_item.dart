import 'package:flutter/material.dart';

class BreadcrumbsItem extends StatelessWidget {
  const BreadcrumbsItem({
    Key? key,
    this.showIcon = true,
    required this.icon,
    required this.text,
    required this.outlined,
    required this.onPress,
  }) : super(key: key);

  final bool showIcon;
  final Icon icon;
  final Text text;
  final bool outlined;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    if (outlined) {
      if (showIcon) {
        print(text);
        return OutlinedButton.icon(
          onPressed: onPress,
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
        onPressed: onPress,
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
        onPressed: onPress,
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
      onPressed: onPress,
      child: text,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          Colors.black,
        ),
      ),
    );
  }
}
