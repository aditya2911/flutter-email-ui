import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'appbar_nav_buttons.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.055,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                const AppbarNavButtons(
                  icon: Icons.chevron_left,
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                const AppbarNavButtons(
                  icon: Icons.chevron_right,
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.09,
                height: size.height * 0.04,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "UPGRADE",
                        style: TextStyle(letterSpacing: 1, fontSize: 12),
                      ),
                    )),
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: size.width * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(size.width * 0.001),
                          height: size.height * 0.031,
                          width: size.width * 0.017,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(1000)),
                            child: const FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Icon(
                                Icons.person_outline_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width * 0.004),
                          width: size.width * 0.03,
                          height: size.height * 0.02,
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "aditya",
                              style: TextStyle(
                                letterSpacing: -0.2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.035,
                          width: size.width * 0.010,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Transform.rotate(
                              angle: 3 * (math.pi / 2),
                              child: const Icon(Icons.chevron_left),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
