import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class mpSongInfo extends StatelessWidget {
  final Size size;
  const mpSongInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          children: [
            SizedBox(
                width: size.width * 0.04,
                height: size.height * 0.07,
                child: Image.asset("assets/Images/1.jfif", fit: BoxFit.cover)),
            Flexible(
              flex: 10,
              child: Container(
                margin: EdgeInsets.only(left: size.width * 0.01),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    AutoSizeText("Waves (feat. Simon Dominic & Jamie)",
                        minFontSize: 10, overflow: TextOverflow.ellipsis),
                    AutoSizeText(
                      "KANGDANIEL,Simon Dominic, JAMIE",
                      strutStyle: StrutStyle(height: 1.2),
                      style: TextStyle(fontWeight: FontWeight.w200),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: size.width * 0.01),
                  child: const Icon(Icons.heart_broken_outlined),
                ))
          ],
        ));
  }
}
