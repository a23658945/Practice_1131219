import 'package:flutter/material.dart';
import 'example_1.dart';
import 'exTextfield_2.dart';
import 'ListPage.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ListPage',
      routes:{
        '/':(context)=>Scaffold(body: ExTextField_1()),
        '/ListPage':(context)=>ListPage()
        
      },
     
    );
  }
}

