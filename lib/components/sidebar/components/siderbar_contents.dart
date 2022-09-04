import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class SidebarContents extends StatelessWidget {
  final String text;
  final String svgPath;
  const SidebarContents({super.key, required this.text, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.50,
        child: Container(
          child: InkWell(
            hoverColor: Colors.grey.withOpacity(0.2),
            splashFactory: NoSplash.splashFactory,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.25,
                  ),
                ),
                Transform.scale(
                  scale: 1.3,
                  child: SvgPicture.asset(
                    svgPath,
                    color: textColor,
                  ),
                ),
                const Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.245,
                  ),
                ),
                Text(text, style: const TextStyle(fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
