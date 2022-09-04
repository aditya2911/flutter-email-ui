import 'package:email_ui/config/colors.dart';
import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  final Size size;
  const MainContent({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: const Color(0xff1c7A74),
      child: Ink(
        decoration: BoxDecoration(
            color: mediaplayerBackgroundColor,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  mediaplayerBackgroundColor
                ])),
        height: size.height,
        width: size.width * .68,
      ),
    );
  }
}
