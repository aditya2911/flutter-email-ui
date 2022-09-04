import 'package:flutter/material.dart';

class SidebarUserItems extends StatelessWidget {
  final String text;
  final String image;
  const SidebarUserItems({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: 0.9,
        heightFactor: 0.40,
        child: InkWell(
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 0.7,
                child: Image.asset(
                  image,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.005,
              ),
              Text(text,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
