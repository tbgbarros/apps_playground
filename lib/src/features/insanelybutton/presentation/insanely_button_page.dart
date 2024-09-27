import 'dart:async';

import 'package:flutter/material.dart';

class InsanelyButtonPage extends StatefulWidget {
  const InsanelyButtonPage({super.key});

  @override
  State<InsanelyButtonPage> createState() => _InsanelyButtonPageState();
}

class _InsanelyButtonPageState extends State<InsanelyButtonPage> {
  Timer? _timer;
  int _startValue = 30;
  bool _buttonState = false;
  int _clicks = 0;

  void start() {
    _timer?.cancel();
    _buttonState = true;

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (_startValue > 0) {
            _startValue--;
          } else {
            _timer?.cancel();
            _buttonState = false;
          }
        });
      },
    );
  }

  void pause() {
    _timer?.cancel();
    setState(() {
      _buttonState = false;
    });
  }

  void reset() {
    _timer?.cancel();
    setState(() {
      _startValue = 30;
      _clicks = 0;
    });
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
        title: const Text('Insanely Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('TIMER', style: TextStyle(fontSize: 72)),
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
                    child: const Text('START')),
                ElevatedButton(
                    onPressed: () {
                      pause();
                    },
                    child: const Text('PAUSE')),
                ElevatedButton(
                    onPressed: () {
                      reset();
                    },
                    child: const Text('RESET')),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 175,
              height: 175,
              child: FilledButton(
                  onPressed: _buttonState
                      ? () {
                          setState(() {
                            _clicks++;
                          });
                        }
                      : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('INSANE BUTTON'),
                      Text(
                        _clicks.toString(),
                        style: const TextStyle(
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
