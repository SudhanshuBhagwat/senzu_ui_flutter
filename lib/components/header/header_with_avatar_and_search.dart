import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senzu_ui_flutter/components/avatar/avatar.dart';

class HeaderWithAvatarAndSearch extends StatefulWidget {
  const HeaderWithAvatarAndSearch({
    Key? key,
    required this.headerTitle,
    required this.icon,
    required this.imageUri,
    required this.onSumit,
  }) : super(key: key);

  final String headerTitle;
  final IconData icon;
  final String imageUri;
  final Function(String value) onSumit;
  static const double avatarChange = 25.0;

  @override
  State<HeaderWithAvatarAndSearch> createState() =>
      _HeaderWithAvatarAndSearchState();
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
          radius: 'full',
          imageUri: widget.imageUri,
        ),
      ),
      title: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 4.0,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(40.0),
            ),
          ),
        ),
        onSubmitted: widget.onSumit,
      ),
      actions: [
        IconButton(
          icon: Icon(widget.icon),
          iconSize: 40,
          onPressed: null,
        ),
      ],
    );
    // Container(
    //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       CircleAvatar(
    //         radius: HeaderWithAvatarAndSearch.avatarChange,
    //         backgroundImage: NetworkImage(widget.imageUri),
    //       ),
    //       Flexible(
    //         child: Container(
    //           margin: const EdgeInsets.symmetric(horizontal: 20.0),
    //           child: TextField(
    //             controller: _controller,
    //             decoration: InputDecoration(
    //               hintText: 'Search',
    //               contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
    //               border: OutlineInputBorder(
    //                 borderSide: BorderSide(
    //                   color: Colors.grey.shade100,
    //                   width: 4.0,
    //                   style: BorderStyle.solid,
    //                 ),
    //                 borderRadius: const BorderRadius.all(
    //                   Radius.circular(40.0),
    //                 ),
    //               ),
    //             ),
    //             onSubmitted: widget.onSumit,
    //           ),
    //         ),
    //       ),
    //       IconButton(
    //         icon: Icon(widget.icon),
    //         iconSize: 40,
    //         onPressed: null,
    //       ),
    //     ],
    //   ),
    // );
  }
}
