import 'package:email_ui/config/album_info.dart';
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MainAppBar(size: size),
              RecentContainer(size: size),
              Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.067,
                ),
                width: double.infinity,
                height: size.height * 0.40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Your top mixes",
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: -1,
                            wordSpacing: -1,
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: size.height * 0.015),
                              child: const Text(
                                "SEE ALL",
                                style:
                                    TextStyle(fontSize: 13, letterSpacing: .5),
                              ),
                            )),
                      ],
                    ),
                    Expanded(
                        child: SizedBox.expand(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.0032,
                            vertical: size.height * 0.025),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 27,
                          runSpacing: 10,
                          children: List.generate(
                              4,
                              (index) => CardWidget(
                                    imgPath: 'assets/Images/${index + 7}.jfif',
                                    size: size,
                                    metaData: genreMetadata[index],
                                    title: genreMix[index],
                                  )),
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final String metaData;
  final Size size;
  const CardWidget(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.metaData,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          textTheme: const TextTheme(
        bodyText1: TextStyle(),
      )),
      child: Container(
        color: mainContentBackgroundCardColor,
        width: size.width * 0.145,
        height: size.height * 0.35,
        padding: EdgeInsets.only(
            left: size.width * 0.0065,
            right: size.width * 0.0065,
            bottom: size.height * 0.006,
            top: size.height * 0.02),
        child: SizedBox(
          width: size.width * 0.11,
          height: size.height * 0.26,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.width * 0.13,
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Container(
                child: SizedBox.expand(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          title,
                          style: const TextStyle(fontSize: 15, wordSpacing: -1),
                        ),
                      ),
                      SizedBox(height: size.height * 0.0065),
                      Container(
                        padding: EdgeInsets.only(bottom: size.height * 0.01),
                        child: Text(
                          metaData,
                          style: const TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
