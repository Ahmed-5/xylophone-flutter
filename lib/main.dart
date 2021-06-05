import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded noteWidget(Color color, int note, int flexSize) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 10 - flexSize,
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: flexSize,
            child: TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note$note.wav');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              noteWidget(Colors.red, 1, 9),
              noteWidget(Colors.orange, 2, 8),
              noteWidget(Colors.yellow, 3, 7),
              noteWidget(Colors.green, 4, 6),
              noteWidget(Colors.teal, 5, 5),
              noteWidget(Colors.blue, 6, 4),
              noteWidget(Colors.deepPurple, 7, 3),
            ],
          ),
        ),
      ),
    );
  }
}
