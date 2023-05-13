import 'package:flutter/material.dart';

import 'package:Fovel/screens/add_novel.dart';
import 'package:Fovel/screens/home.dart';
import 'package:Fovel/screens/editing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add_novel': (context) => const AddNovel(),
        '/editing': (context) => const Editing(),
      },
    );
  }
}
