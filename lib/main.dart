import 'package:flutter/material.dart';
import 'ContentPage.dart';
import 'ListPage.dart';
import 'EntryScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Entryscreen(),
        '/ListPage': (context) => ListPage(),
        '/ContentPage': (context) => ContentPage()
      },
    );
  }
}
