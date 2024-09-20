import 'package:apps_playground/src/features/xylophone/presentation/xylophone_page.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const XylophonePage(),
                  ),
                );
              },
              child: const Text('Xylophone'),
            ),
          ],
        ),
      ),
    );
  }
}
