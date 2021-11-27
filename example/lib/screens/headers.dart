import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senzu_ui_flutter/senzu_ui_flutter.dart';

const String imageURI = 'https://source.unsplash.com/random';
const String headerTitle = 'Senzu UI';
const IconData icon = Icons.menu;

class Headers extends StatelessWidget {
  const Headers({Key? key}) : super(key: key);

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
            const SimpleHeader(
              headerTitle: headerTitle,
              icon: icon,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Header With Avatar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const HeaderWithAvatar(
              headerTitle: headerTitle,
              isHeaderCentered: true,
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Header With Avatar And Subheading',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const HeaderWithAvatarAndSubheading(
              headerTitle: headerTitle,
              subTitle: 'Simple Sub Heading',
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Header With Avatar No Title',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const HeaderWithAvatarNoTitle(
              icon: icon,
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Header With Avatar And Search',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Header With Greeting',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const HeaderWithGreeting(
              greeting: 'Hello',
              title: 'Sudhanshu',
              imageUri: imageURI,
              avatarSize: AvatarSize.full,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
