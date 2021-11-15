import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senzu_ui_flutter/components/avatar/avatar.dart';

class HeaderWithAvatarAndSearch extends StatefulWidget
    implements PreferredSizeWidget {
  const HeaderWithAvatarAndSearch({
    Key? key,
    required this.headerTitle,
    required this.icon,
    required this.imageUri,
    required this.onSubmit,
    required this.avatarSize,
  }) : super(key: key);

  final String headerTitle;
  final IconData icon;
  final String imageUri;
  final AvatarSize avatarSize;
  final Function(String value) onSubmit;
  static const double avatarChange = 25.0;

  @override
  State<HeaderWithAvatarAndSearch> createState() =>
      _HeaderWithAvatarAndSearchState();

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class _HeaderWithAvatarAndSearchState extends State<HeaderWithAvatarAndSearch> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 65,
      leadingWidth: 65,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Avatar(
          size: 50,
          radius: widget.avatarSize,
          imageUri: widget.imageUri,
        ),
      ),
      title: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 4.0,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
        ),
        onSubmitted: widget.onSubmit,
      ),
      actions: [
        IconButton(
          icon: Icon(widget.icon),
          iconSize: 40,
          onPressed: null,
        ),
      ],
    );
  }
}
