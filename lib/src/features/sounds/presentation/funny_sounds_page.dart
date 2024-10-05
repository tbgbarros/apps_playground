import 'package:apps_playground/src/features/sounds/presentation/widgets/funny_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';

class FunnySoundsPage extends StatefulWidget {
  const FunnySoundsPage({super.key});

  @override
  State<FunnySoundsPage> createState() => _FunnySoundsPageState();
}



class _FunnySoundsPageState extends State<FunnySoundsPage> {
  int selectIndex = 0;
  final player = AudioPlayer();

  void playAudio(int asseId) async {
    await player.setAsset('assets/audio/som$asseId.mp3');
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FunnyButtonWidget(
                  assetId: 1, callBack: playAudio, name: 'Pia cheia de louça'),
              FunnyButtonWidget(
                  assetId: 2, callBack: playAudio, name: 'outro'),
              FunnyButtonWidget(
                  assetId: 3, callBack: playAudio, name: 'o pix '),
            ],
          ),
        ),
      ),
      Container(
        child: Center(
          child: ListView(
            children: [
              ListTile(
                onTap: (){},
                leading: const FaIcon(FontAwesomeIcons.fly),
                title: const Text('Jogao'),
                subtitle: const Text('incrivel jogo de roubar seu dinheiro'),
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.book_online)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                ],
              ),
              Column(
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text('Name'),
                    subtitle: Text('email@email.com'),
                  ),
                  Container(
                    height: 200,
                    color: Colors.red.shade200,
                  ),
                  OverflowBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ),
      Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Wrap(

            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,

            children: [
              FunnyButtonWidget(
                  assetId: 1, callBack: playAudio, name: 'Pia cheia de louça'),
              FunnyButtonWidget(
                  assetId: 2, callBack: playAudio, name: 'outro'),
              FunnyButtonWidget(
                  assetId: 3, callBack: playAudio, name: 'o pix '),
            ],
          ),
        ),
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
