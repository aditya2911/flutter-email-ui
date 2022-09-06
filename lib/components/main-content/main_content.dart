import 'package:email_ui/config/colors.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/recent_container.dart';

class MainContent extends StatelessWidget {
  final Size size;
  const MainContent({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.grey.shade300,
              fontWeight: FontWeight.w700,
              decorationThickness: 0.1,
              fontSize: 13.5,
            ),
            bodyText2: TextStyle(
                fontSize: 13,
                decorationThickness: 0.1,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w700)),
        fontFamily: "Spotify",
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.zero,
              shape: const StadiumBorder()),
        ),
      ),
      child: Ink(
        color: Colors.black,
        child: Ink(
          color: const Color(0xff4f4c4c).withOpacity(1),
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            decoration: BoxDecoration(
                color: mediaplayerBackgroundColor,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      backgroundColor.withOpacity(0.9),
                      backgroundColor.withOpacity(1),
                      backgroundColor.withOpacity(1),
                      backgroundColor.withOpacity(1),
                    ])),
            height: size.height,
            width: size.width * .68,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [MainAppBar(size: size), RecentContainer(size: size)],
            ),
          ),
        ),
      ),
    );
  }
}
