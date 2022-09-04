import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  final Size size;
  const MainContent({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width * .68,
      color: Colors.green,
    );
  }
}
