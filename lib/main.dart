import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const RunHere(),
  );
}

class RunHere extends StatelessWidget {
  const RunHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  DrumPage({Key? key}) : super(key: key);

  final player = AudioPlayer();

  void sesical(String ses) {
    player.play(AssetSource("$ses.m4a"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildTextButton("1", Colors.lightBlue),
                  ),
                  Expanded(
                    child: buildTextButton("2", Colors.deepOrange),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildTextButton("3", Colors.lime),
                  ),
                  Expanded(
                    child: buildTextButton("4", Colors.purpleAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildTextButton("5", Colors.cyanAccent),
                  ),
                  Expanded(
                    child: buildTextButton("6", Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildTextButton("7", Colors.green),
                  ),
                  Expanded(
                    child: buildTextButton("8", Colors.yellowAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        player.stop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        color: Colors.white70,
                        child: const Text(
                          "Durdur",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(String ses, Color renk) {
    return TextButton(
      onPressed: () {
        sesical(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
