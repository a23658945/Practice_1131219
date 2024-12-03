import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  TextEditingController _contentcontroller = TextEditingController();

  @override
  void dispose() {
    _contentcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Create a task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.5,
              width: MediaQuery.sizeOf(context).width * 0.7,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(83, 92, 145, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ]),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("Title"),
                        Text("Date"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SafeArea(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(195, 192, 197, 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(3, 3))
                            ]),
                        child: TextField(
                          controller: _contentcontroller,
                          onSubmitted: (e) {
                            print(_contentcontroller.text);
                          },
                          decoration: InputDecoration(
                              hintText: "Write here....",
                              border: InputBorder.none),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _contentcontroller.text);
                  // Navigator.pushNamed(context, "/ListPage");
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
