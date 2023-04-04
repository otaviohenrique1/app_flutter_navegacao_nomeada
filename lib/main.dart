import 'package:app_flutter_navegacao_nomeada/homepage.dart';
import 'package:app_flutter_navegacao_nomeada/login.dart';
import 'package:app_flutter_navegacao_nomeada/teste.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Login(),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const Login(),
        "/homepage": (context) => const Homepage(),
        "/teste": (context) => const Teste(),
      },
    );
  }
}
