import 'package:flutter/material.dart';

import 'breadcrumbs_item.dart';

class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({
    Key? key,
    required this.data,
    this.showIcon = true,
    this.outlined = false,
    required this.onPress,
  }) : super(key: key);

  final List<Map<String, dynamic>> data;
  final bool showIcon;
  final bool outlined;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: data.length,
      itemBuilder: (context, index) {
        if (index == data.length - 1) {
          return BreadcrumbsItem(
            showIcon: showIcon,
            outlined: outlined,
            icon: const Icon(Icons.insert_drive_file_outlined),
            text: Text(
              data[index]['fileName'],
            ),
            onPress: onPress,
          );
        }

        return Row(
          children: [
            BreadcrumbsItem(
              showIcon: showIcon,
              outlined: outlined,
              icon: const Icon(Icons.folder_open),
              text: Text(
                data[index]['fileName'],
              ),
              onPress: onPress,
            ),
            const Icon(Icons.chevron_right),
          ],
        );
      },
    );
  }
}
