import 'package:apps_playground/src/features/xylophone/presentation/widgets/xylophone_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final player = AudioPlayer();

  void playAudio(int asseId) async {
    await player.setAsset('assets/audio/note$asseId.wav');
    await player.play();
  }

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
          XylophoneButtonWidget(
              color: Colors.purple, assetId: 1, callBack: playAudio),
          XylophoneButtonWidget(
              color: Colors.indigo, assetId: 2, callBack: playAudio),
          XylophoneButtonWidget(
              color: Colors.blue, assetId: 3, callBack: playAudio),
          XylophoneButtonWidget(
              color: Colors.green, assetId: 4, callBack: playAudio),
          XylophoneButtonWidget(
              color: Colors.yellow, assetId: 5, callBack: playAudio),
          XylophoneButtonWidget(
              color: Colors.orange, assetId: 6, callBack: playAudio),
          XylophoneButtonWidget(
              color: Colors.red, assetId: 7, callBack: playAudio),
        ],
      ),
    );
  }
}
