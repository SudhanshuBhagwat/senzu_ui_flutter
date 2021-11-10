import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleHeader extends StatelessWidget {
  const SimpleHeader({
    Key? key,
    required this.headerTitle,
    required this.icon,
  }) : super(key: key);

  final String headerTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          Text(
            headerTitle,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
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
