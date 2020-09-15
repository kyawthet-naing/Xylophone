import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class XylophonePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // for fullScreen :
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            xylophoneButton(Colors.redAccent, 1),
            xylophoneButton(Colors.blue, 2),
            xylophoneButton(Colors.orangeAccent, 3),
            xylophoneButton(Colors.blueGrey[400], 4),
            xylophoneButton(Colors.brown, 5),
            xylophoneButton(Colors.yellow, 6),
            xylophoneButton(Colors.green, 7),
          ],
        ),
      ),
    );
  }

  Widget xylophoneButton(Color btnColor, int audioNum) {
    return Expanded(
        child: FlatButton(
      color: btnColor,
      onPressed: () {
        AudioCache audioCachePlayer = AudioCache();
        audioCachePlayer.play('note$audioNum.wav');
      },
      child: null,
    ));
  }
}
