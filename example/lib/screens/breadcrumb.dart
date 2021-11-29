import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senzu_ui_flutter/senzu_ui_flutter.dart';

const List<Map<String, dynamic>> data = [
  {
    'fileName': 'Users',
  },
  {
    'fileName': 'Projects',
  },
  {
    'fileName': 'senzu_ui_flutter',
  },
  {
    'fileName': 'example',
  },
  {
    'fileName': 'breadcrumbs.dart',
  },
];

class Breadcrumb extends StatelessWidget {
  const Breadcrumb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: SvgPicture.asset('assets/images/logo.svg', height: 36),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Simple Header',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Breadcrumbs(
                data: data,
                onPress: () {
                  print('Hello');
                },
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Simple Header',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Breadcrumbs(
                showIcon: false,
                data: data,
                onPress: () {
                  print('Hello');
                },
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Simple Header',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Breadcrumbs(
                outlined: true,
                data: data,
                onPress: () {
                  print('Hello');
                },
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Simple Header',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Breadcrumbs(
                showIcon: false,
                outlined: true,
                data: data,
                onPress: () {
                  print('Hello');
                },
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
