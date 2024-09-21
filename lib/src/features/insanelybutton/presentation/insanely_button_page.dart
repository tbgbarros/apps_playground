import 'dart:async';

import 'package:flutter/material.dart';

class InsanelyButtonPage extends StatefulWidget {
  const InsanelyButtonPage({super.key});

  @override
  State<InsanelyButtonPage> createState() => _InsanelyButtonPageState();
}

class _InsanelyButtonPageState extends State<InsanelyButtonPage> {
  Timer? _timer;
  int _clicks = 0;
  int _startValue = 30;

  void start() {
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          if (_startValue > 0) {
            _startValue--;
          } else {
            _timer!.cancel();
          }
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insanely Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TIMER', style: TextStyle(fontSize: 72)),
            Text(
              '$_startValue',
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      start();
                    },
                    child: Text('START')),
                ElevatedButton(onPressed: () {}, child: Text('STOP')),
                ElevatedButton(onPressed: () {}, child: Text('RESET')),
              ],
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 175,
              height: 175,
              child: FilledButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('INSANE BUTTON'),
                      Text(
                        '12',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// William, Daniel, Tiago Barros, Vitor, Pedro Beck, Pedro Otavio, Chiara
// Caua
