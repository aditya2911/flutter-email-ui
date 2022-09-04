import 'package:flutter/material.dart';

import '../../config/colors.dart';
import 'components/sidebar_user_items.dart';
import 'components/siderbar_contents.dart';
import 'components/siderbar_playlists.dart';

class Sidebar extends StatelessWidget {
  final Size size;

  const Sidebar({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: sidebarColor,
      child: Container(
        height: size.height,
        width: size.width * .15,
        padding: EdgeInsets.all(size.width * 0.005),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.045,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 15.0, left: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SidebarContents(
              text: "Home",
              svgPath: "assets/Icons/house-door-fill.svg",
            ),
            const SidebarContents(
              text: "Search",
              svgPath: "assets/Icons/search.svg",
            ),
            const SidebarContents(
              text: "Library",
              svgPath: "assets/Icons/collection.svg",
            ),
            SizedBox(height: size.height * 0.020),
            const SidebarUserItems(
                text: "Create Playlist", image: "assets/Images/1.jfif"),
            const SidebarUserItems(
                text: "Liked Songs", image: "assets/Images/2.jfif"),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            SiderBarPlaylists(size: size, text: "To Your Eternity Soundtrack "),
            SiderBarPlaylists(size: size, text: "Smoke Titan"),
            SiderBarPlaylists(size: size, text: "MAMAMOO Mix"),
            SiderBarPlaylists(size: size, text: "Today's Top hits"),
          ],
        ),
      ),
    );
  }
}
