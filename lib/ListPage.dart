import 'package:flutter/material.dart';
import 'package:practice_1131127/LovedPage.dart';
import 'taskList.dart';
import 'dataList.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<TodoData> task = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Task List"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Lovedpage(tasks: task)));
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_note,
                color: Colors.black,
              ))
        ],
      ),
      body: task.isEmpty
          ? Center(
              child: Text(
              "請按右下角按鈕，新增第一筆ToDo!(๑´ㅂ`๑)",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ))
          : ListView(
              children: task.asMap().entries.map((e) {
              int index = e.key;
              TodoData item = e.value;
              return Tasklist(
                checked: item.checked,
                content: item.content,
                loved: item.loved,
                onCheckedChanged: (bool? newValue) {
                  setState(() {
                    task[index].checked = newValue ?? false;
                    for (var i in task) {
                      print(i.checked);
                    }
                  });
                },
                onLoveChanged: (bool value) {
                  setState(() {
                    task[index].loved = value;
                  });
                },
              );
            }).toList()
              //  task
              //     .map((e) => Tasklist(checked: e.checked, content: e.content))
              //     .toList(),
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/ContentPage');
          if (result != null && result != '') {
            setState(() {
              task.add(TodoData(
                  checked: false, content: result.toString(), loved: false));
            });
          }

          // for (int i = 0; i < task.length; i++) {
          //   print(task[i].content);
          // }
        },
        child: Icon(Icons.edit_document),
      ),
    );
  }
}
