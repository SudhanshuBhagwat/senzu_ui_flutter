import 'package:flutter/material.dart';
import 'package:senzu_ui_flutter/senzu_ui_flutter.dart';

void main() {
  runApp(const MyApp());
}

const String imageURI = 'https://source.unsplash.com/random';
const String headerTitle = 'Header';
const IconData icon = Icons.menu;

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
        flexibleSpace: const SafeArea(
          child: SimpleHeader(
            headerTitle: headerTitle,
            icon: icon,
          ),
        ),
      ),
      body: const SafeArea(
        child: Avatar(
          size: 60,
          radius: 'sm',
          imageUri: imageURI,
        ),
        // ListView(
        //   physics: const BouncingScrollPhysics(),
        //   children: [
        //     const SimpleHeader(
        //       headerTitle: headerTitle,
        //       icon: icon,
        //     ),
        //     const HeaderWithAvatar(
        //       headerTitle: headerTitle,
        //       isHeaderCentered: true,
        //       icon: icon,
        //       imageUri: imageURI,
        //     ),
        //     const HeaderWithAvatarNoTitle(
        //       icon: icon,
        //       imageUri: imageURI,
        //     ),
        //     HeaderWithAvatarAndSearch(
        //       headerTitle: headerTitle,
        //       icon: icon,
        //       imageUri: imageURI,
        //       onSumit: (String value) {
        //         // Do some submit logic
        //       },
        //     ),
      ),
    );
  }
}
