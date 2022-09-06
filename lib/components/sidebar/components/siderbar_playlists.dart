import 'package:flutter/material.dart';

class SiderBarPlaylists extends StatelessWidget {
  final String text;
  const SiderBarPlaylists({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        heightFactor: 0.355,
        widthFactor: 0.86,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            maxLines: 1,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
