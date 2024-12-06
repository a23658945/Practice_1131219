import 'package:flutter/material.dart';
import 'dataList.dart';
import 'taskList.dart';

class Lovedpage extends StatefulWidget {
  Lovedpage({super.key, required this.tasks});
  final List<TodoData> tasks;
  @override
  State<Lovedpage> createState() => _LovedpageState();
}

class _LovedpageState extends State<Lovedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorite Page"),
        ),
        body: ListView(
            children: widget.tasks
                // .where((item) => item.loved == true)
                // .toList()
                .asMap()
                .entries
                .map((e) {
          int index = e.key;
          TodoData item = e.value;
          if (item.loved == true) {
            return Tasklist(
              checked: item.checked,
              content: item.content,
              loved: item.loved,
              onCheckedChanged: (bool? newValue) {
                setState(() {
                  widget.tasks[index].checked = newValue ?? false;
                  // for (var i in widget.tasks) {
                  //   // print(i.checked);
                  // }
                });
              },
              onLoveChanged: (bool value) {
                setState(() {
                  widget.tasks[index].loved = value;
                });
              },
            );
          } else {
            return Container();
          }
        }).toList()
            //  task
            //     .map((e) => Tasklist(checked: e.checked, content: e.content))
            //     .toList(),
            ));
  }
}
