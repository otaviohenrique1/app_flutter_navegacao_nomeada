import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu incrivel app",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 36,
        ),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                  Text(
                    'Usuario',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'usuario@email.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Homepage'),
              onTap: () {
                Navigator.of(context).pushNamed("/homepage");
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/login");
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Text(args.id),
          ),
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String id;

  ScreenArguments(this.id);
}
