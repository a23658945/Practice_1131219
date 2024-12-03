import 'package:flutter/material.dart';
import 'ContentPage.dart';
import 'ListPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ListPage',
      routes: {
        // '/': (context) => Scaffold(body: ExTextField_1()),
        '/ListPage': (context) => ListPage(),
        '/ContentPage': (context) => ContentPage()
      },
    );
  }
}
