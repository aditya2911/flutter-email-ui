import 'package:flutter/material.dart';

import '../../config/colors.dart';
import 'components/mp_additional_action.dart';
import 'components/mp_audio_playback.dart';
import 'components/mp_song_info.dart';

class MediaPlayerWidget extends StatelessWidget {
  final Size size;
  const MediaPlayerWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01, horizontal: size.width * 0.01),
        width: double.infinity,
        color: mediaplayerBackgroundColor,
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mpSongInfo(
              size: size,
            ),
            mpAudioPlayback(size: size),
            mpAdditionalActions(size: size)
          ],
        ),
      ),
    );
  }
}
