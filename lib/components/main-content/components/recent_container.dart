import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import '../../../config/colors.dart';
import '../../../config/recent_list_album.dart';

class RecentContainer extends StatelessWidget {
  final Size size;
  const RecentContainer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.045),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Good afternoon",
            style:
                TextStyle(fontSize: 30, letterSpacing: -0.5, wordSpacing: -2),
          ),
          Container(
              margin: EdgeInsets.only(top: size.height * 0.03),
              width: double.infinity,
              height: size.height * 0.20,
              child: LayoutGrid(
                columnSizes: [1.fr, 1.fr, 1.fr],
                rowSizes: [
                  1.fr,
                  1.fr,
                ],
                rowGap: 12,
                columnGap: 20,
                children: List.generate(
                    6,
                    (index) => Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  recentTilesG1Color,
                                  recentTilesG2Color,
                                  recentTilesG3Color,
                                  recentTilesG4Color
                                ],
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height * 0.095,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: SizedBox(
                                  width: size.width * 0.055,
                                  height: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                    ),
                                    child: Image.asset(
                                        fit: BoxFit.cover,
                                        "assets/Images/${index + 1}.jfif"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: size.height * 0.007),
                                child: Text(
                                  recentAlbum[index].toString(),
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontSize: 15.5, letterSpacing: -0.6),
                                ),
                              )
                            ],
                          ),
                        )),
              ))
        ],
      ),
    );
  }
}
