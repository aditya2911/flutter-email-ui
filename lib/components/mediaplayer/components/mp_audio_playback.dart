import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class mpAudioPlayback extends StatelessWidget {
  final Size size;
  const mpAudioPlayback({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.15,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.skip_previous)),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.play_arrow))),
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle))
            ]),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SizedBox(
            width: size.width * 0.38,
            child: ProgressBar(
              progress: const Duration(seconds: 5),
              buffered: const Duration(seconds: 5),
              total: const Duration(minutes: 1),
              progressBarColor: Colors.white,
              timeLabelTextStyle: const TextStyle(
                  fontFamily: "Spotify",
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w200),
              timeLabelLocation: TimeLabelLocation.sides,
              baseBarColor: Colors.white.withOpacity(0.24),
              bufferedBarColor: Colors.white.withOpacity(0.24),
              thumbColor: Colors.white,
              barHeight: 3.0,
              thumbRadius: 5.0,
            ),
          )
        ],
      ),
    );
  }
}
