import 'package:flutter/material.dart';

import 'funny_sounds_page.dart';
import 'xylophone_page.dart';

class SoundsPage extends StatefulWidget {
  const SoundsPage({super.key});

  @override
  State<SoundsPage> createState() => _SoundsPageState();
}

class _SoundsPageState extends State<SoundsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sounds Page'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Xylophone'),
              ),
              Tab(
                child: Text('Funny Sounds'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            XylophonePage(),
            FunnySoundsPage(),
          ],
        ),
      ),
    );
  }
}
