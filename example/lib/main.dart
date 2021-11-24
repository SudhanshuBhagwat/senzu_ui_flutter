import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senzu_ui_flutter/senzu_ui_flutter.dart';

void main() {
  runApp(const MyApp());
}

const String imageURI = 'https://source.unsplash.com/random';
const String headerTitle = 'Senzu UI';
const IconData icon = Icons.menu;
const List<Map<String, String>> dataWithNoAvatar = [
  {'intial': 'S'},
  {'intial': 'U'},
  {'intial': 'D'},
  {'intial': 'H'},
  {'intial': 'A'},
  {'intial': 'N'},
];
const List<Map<String, String>> data = [
  {'imageUri': imageURI, 'intial': 'S'},
  {'imageUri': imageURI, 'intial': 'U'},
  {'imageUri': imageURI, 'intial': 'D'},
  {'imageUri': imageURI, 'intial': 'H'},
  {'imageUri': imageURI, 'intial': 'A'},
  {'imageUri': imageURI, 'intial': 'N'},
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Avatar(
                  size: 50,
                  title: 'S',
                  radius: AvatarSize.none,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  radius: AvatarSize.sm,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  radius: AvatarSize.md,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  radius: AvatarSize.lg,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  radius: AvatarSize.xlg,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  radius: AvatarSize.full,
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Avatar(
                  size: 50,
                  title: 'S',
                  imageUri: imageURI,
                  radius: AvatarSize.none,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  imageUri: imageURI,
                  radius: AvatarSize.sm,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  imageUri: imageURI,
                  radius: AvatarSize.md,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  imageUri: imageURI,
                  radius: AvatarSize.lg,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  imageUri: imageURI,
                  radius: AvatarSize.xlg,
                ),
                Avatar(
                  size: 50,
                  title: 'S',
                  imageUri: imageURI,
                  radius: AvatarSize.full,
                ),
              ],
            ),
            const SimpleHeader(
              headerTitle: headerTitle,
              icon: icon,
            ),
            const HeaderWithAvatar(
              headerTitle: headerTitle,
              isHeaderCentered: true,
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const HeaderWithAvatarAndSubheading(
              headerTitle: headerTitle,
              subTitle: 'Simple Sub Heading',
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const HeaderWithAvatarNoTitle(
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            HeaderWithAvatarAndSearch(
              headerTitle: headerTitle,
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
              onSubmit: (String value) {
                // Do some submit logic
              },
            ),
            const HeaderWithGreeting(
              greeting: 'Hello',
              title: 'Sudhanshu',
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const StackedAvatar(
              data: data,
            ),
            const StackedAvatar(
              data: dataWithNoAvatar,
            ),
            const StackedAvatar(
              data: data,
              ltr: false,
            ),
            const StackedAvatar(
              data: dataWithNoAvatar,
              ltr: false,
            ),
          ],
        ),
      ),
    );
  }
}
