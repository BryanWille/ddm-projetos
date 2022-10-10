import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Esse é o título mesmo"),
              centerTitle: true,
            ),
            body: const Center(child: Text("Texto do Body")))),
  );
}
