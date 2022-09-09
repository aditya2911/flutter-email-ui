// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';

class SignInSidebar extends StatelessWidget {
  final Size size;
  const SignInSidebar({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      child: Container(
        height: size.height,
        width: size.width * .17,
        color: friendActivitySidebarColor,
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05, horizontal: size.width * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AutoSizeText("Friend activity",
                strutStyle: StrutStyle(), style: TextStyle(fontSize: 17)),
            SizedBox(
              height: size.height * 0.023,
            ),
            AutoSizeText(
              "Connect with Facebook to see what your friends are playing",
              style: TextStyle(
                  letterSpacing: -0.6,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                  color: Colors.grey.shade300),
            ),
            SizedBox(
              height: size.height * 0.023,
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.045,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), primary: facebookBColor),
                  onPressed: () {},
                  child: const AutoSizeText("CONNECT WITH FACEBOOK",
                      style: TextStyle(
                        fontSize: 12,
                        letterSpacing: 1,
                      ))),
            ),
            SizedBox(
              height: size.height * 0.023,
            ),
            AutoSizeText(
              maxFontSize: 11.0,
              minFontSize: 5,
              "We will never post anything without your permission. Show and hide Friend Acitivy from Settings",
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.3),
            )
          ],
        ),
      ),
    );
  }
}
