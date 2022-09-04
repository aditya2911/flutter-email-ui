import 'package:flutter/material.dart';

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
        color: Colors.blue,
      ),
    );
  }
}
