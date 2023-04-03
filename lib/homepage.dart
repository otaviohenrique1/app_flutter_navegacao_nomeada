import 'package:app_flutter_navegacao_nomeada/login.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
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
              title: const Text('Sair'),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const Login(),
                //   ),
                // );
                Navigator.of(context).pushReplacementNamed("/login");
              },
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Item(texto: "Estudar Flutter"),
              Item(texto: "Estudar Unity"),
              Item(texto: "Se inscrever na Dotcode"),
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.texto,
  });

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.check,
              color: Colors.black,
              size: 32,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
