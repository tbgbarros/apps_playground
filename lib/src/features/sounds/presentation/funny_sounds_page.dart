import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FunnySoundsPage extends StatefulWidget {
  const FunnySoundsPage({super.key});

  @override
  State<FunnySoundsPage> createState() => _FunnySoundsPageState();
}

class _FunnySoundsPageState extends State<FunnySoundsPage> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.red.shade200,
      ),
      Container(
        color: Colors.green.shade200,
      ),
      Container(
        color: Colors.blue.shade200,
      )
    ];
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.heart),
            selectedIcon: FaIcon(FontAwesomeIcons.solidHeart),
            label: 'Favoritos',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.faceGrinTears),
            selectedIcon: FaIcon(FontAwesomeIcons.solidFaceGrinTears),
            label: 'Super',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.faceLaugh),
            selectedIcon: FaIcon(FontAwesomeIcons.solidFaceLaugh),
            label: 'Engraçado',
          ),
        ],
      ),
    );
  }
}
