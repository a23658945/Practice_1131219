import 'package:flutter/material.dart';

class Entryscreen extends StatelessWidget {
  const Entryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.asset('assets/SplashPage.png'),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              " By completing your tasks, you unlock your potential and achieve success.",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, wordSpacing: 1),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ListPage');
              },
              child: Text("Next"))
        ],
      ),
    );
  }
}
