import 'package:flutter/material.dart';

class AppbarNavButtons extends StatelessWidget {
  final IconData icon;
  const AppbarNavButtons({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black87,
      radius: 17,
      child: IconButton(
          padding: EdgeInsets.zero,
          splashRadius: 0.1,
          onPressed: () {},
          icon: Icon(
            size: 30,
            icon,
          )),
    );
  }
}
