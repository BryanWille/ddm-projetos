import 'package:flutter/material.dart';

// ********************************
//
// Layout Modelo Básico - STATELESS
//
// ********************************

main() => runApp(const MyApp()); // Fazendo tudo em classe separada

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber[200],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título Texto'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Título do Meio!'),
      ),
    );
  }
}
