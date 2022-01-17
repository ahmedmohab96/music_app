import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  void playMusic(int musicNumber) {
    final player = AudioCache();
    player.play('music-$musicNumber.mp3');
  }

  Expanded myButton(
      {int? musicNumber, Color? buttonColor, String? buttonText}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        // ignore: deprecated_member_use
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {
            playMusic(musicNumber!);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: buttonColor,
                ),
                SizedBox(width: 20.0),
                Text(
                  buttonText!,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  const MusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('عمرو دياب نغمات'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(
                musicNumber: 1,
                buttonColor: Colors.red,
                buttonText: 'هيعيش يفتكرني'),
            myButton(
                musicNumber: 2, buttonColor: Colors.green, buttonText: 'سهران'),
            myButton(
                musicNumber: 3,
                buttonColor: Colors.black,
                buttonText: 'دا لو اتساب'),
            myButton(
                musicNumber: 4,
                buttonColor: Colors.deepOrange,
                buttonText: 'اول يوم في البعد'),
            myButton(
                musicNumber: 5,
                buttonColor: Colors.blue[500],
                buttonText: 'بحبه'),
            myButton(
                musicNumber: 6,
                buttonColor: Colors.purple,
                buttonText: 'كده عيني عينك'),
            myButton(
                musicNumber: 7,
                buttonColor: Colors.cyan,
                buttonText: 'قدام مرايتها'),
          ],
        ),
      ),
    );
  }
}
