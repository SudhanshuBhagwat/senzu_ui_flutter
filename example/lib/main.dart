import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senzu_ui_flutter/components/index.dart';

import 'screens/headers.dart';
import 'screens/avatars.dart';

void main() {
  runApp(const MyApp());
}

const String imageURI = 'https://source.unsplash.com/random';
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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Senzu UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
            const ListTile(
              title: Text(
                'Components',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '1. Headers',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Headers()),
                );
              },
            ),
            ListTile(
              title: const Text(
                '2. Avatars',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Avatars()),
                );
              },
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: const Breadcrumbs(
                data: data,
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: const Breadcrumbs(
                showIcon: false,
                data: data,
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: const Breadcrumbs(
                outlined: true,
                data: data,
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: const Breadcrumbs(
                showIcon: false,
                outlined: true,
                data: data,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
