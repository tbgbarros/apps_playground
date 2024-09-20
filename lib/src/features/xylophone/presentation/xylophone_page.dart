import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
        backgroundColor: Colors.purple.shade900,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await player.setAsset('assets/audio/note1.wav');
          await player.play();
        },
        child: const Icon(Icons.audio_file),
      ),
    );
  }
}
