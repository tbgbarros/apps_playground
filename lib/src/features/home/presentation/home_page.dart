import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        elevation: 8,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              accountName: const Text('Vitor Fellizati'),
              accountEmail: const Text('fellizati@gmail.com'),
            ),
            const ListTile(
              title: Text('Company'),
              subtitle: Text('http://www.fellizati.com'),
              leading: Icon(Icons.school),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('/sounds');
              },
              label: const Text('Sounds Page'),
              icon: Icon(Icons.bookmark_add),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('/insanebutton');
              },
              icon: Icon(Icons.favorite),
              label: Text('InsanelyButton'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/impopar');
              },
              child: const Text('ImpoPar'),
            ),
          ],
        ),
      ),
    );
  }
}
