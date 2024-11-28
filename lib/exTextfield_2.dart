import 'package:flutter/material.dart';

class ExTextField_1 extends StatefulWidget {
  const ExTextField_1({super.key});

  @override
  State<ExTextField_1> createState() => _ExTextField_1State();
}

class _ExTextField_1State extends State<ExTextField_1> {
  late TextEditingController _controller;
  String text='';
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: _controller,
              onSubmitted: (e) {
                setState(() {
                 text = _controller.text;
                });
                _controller.clear();
              },
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          child: Text("$text"),
        )
      ],
    );
  }
}
