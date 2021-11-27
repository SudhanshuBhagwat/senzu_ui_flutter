import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senzu_ui_flutter/senzu_ui_flutter.dart';

const String imageURI = 'https://source.unsplash.com/random';
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

class Avatars extends StatelessWidget {
  const Avatars({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                'Avatars With Initial',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                'Avatars With Image',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                'Stacked Avatars LTR',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                StackedAvatar(
                  data: data,
                ),
                StackedAvatar(
                  data: dataWithNoAvatar,
                ),
              ],
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                'Stacked Avatars RTL',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                StackedAvatar(
                  data: data,
                  ltr: false,
                ),
                StackedAvatar(
                  data: dataWithNoAvatar,
                  ltr: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
