import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;
  bool _checked = false;
  double _colorchange = 0.0;
  double _min = 0.0;
  double _max = 1.0;
  void increase() {
    if (count == 20) {
      _checked = true;
      count = 0;
    }
    if (count == 10) {
      _checked = false;
    }
    count += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello World +$count",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: _checked,
                  onChanged: (e) {
                    setState(() {
                      _checked = e ?? false;
                    });
                  }),
              Container(
                width: 100,
                child: _checked
                    ? Image.asset("assets/light-bulb_open.png")
                    : Image.asset("assets/light-bulb_close.png"),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromRGBO(255, 0, 0, 1-_colorchange),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Slider(
              value: _colorchange,
              min: 0,
              max: 1,
              onChanged: (e) {
                setState(() {
                  _colorchange = e;
                  print(e);
                });
              }),
          ElevatedButton(
              onPressed: () {
                setState(() => increase());
              },
              child: Text("按我+1"))
        ],
      ),
    );
  }
}
