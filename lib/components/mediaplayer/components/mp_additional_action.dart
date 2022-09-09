import 'package:flutter/material.dart';

class mpAdditionalActions extends StatefulWidget {
  final Size size;
  const mpAdditionalActions({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<mpAdditionalActions> createState() => _mpAdditionalActionsState();
}

class _mpAdditionalActionsState extends State<mpAdditionalActions> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(bottom: widget.size.height * 0.01),
        child: SizedBox(
          height: double.infinity,
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: widget.size.width * 0.14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: widget.size.width * 0.02,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.menu)),
                      )),
                  SizedBox(
                      width: widget.size.width * 0.02,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.computer_outlined)),
                      )),
                  SizedBox(
                      width: widget.size.width * 0.02,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.mic)),
                      )),
                  SizedBox(
                      width: widget.size.width * 0.05,
                      child: SliderTheme(
                        data: SliderThemeData(
                            activeTrackColor: Colors.grey,
                            disabledActiveTrackColor: Colors.transparent,
                            trackHeight: 1,
                            thumbShape: SliderComponentShape.noThumb,
                            overlayShape: SliderComponentShape.noOverlay),
                        child: Slider(
                          value: _currentValue,
                          max: 10,
                          min: 0,
                          onChanged: (double value) {
                            setState(() {
                              _currentValue = value;
                            });
                          },
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
