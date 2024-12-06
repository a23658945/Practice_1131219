import 'package:flutter/material.dart';
import 'dataList.dart';
import 'UpdatePage.dart';

class Tasklist extends StatefulWidget {
  Tasklist(
      {super.key,
      required this.checked,
      required this.content,
      required this.loved,
      required this.onCheckedChanged,
      required this.onLoveChanged});
  bool checked;
  bool loved;
  String content;
  final Function(bool?) onCheckedChanged;
  final Function(bool) onLoveChanged;
  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    TodoData task = TodoData(
        checked: widget.checked, content: widget.content, loved: widget.loved);
    return ListTile(
        leading:
            Checkbox(value: widget.checked, onChanged: widget.onCheckedChanged),
        title: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // 陰影顏色與透明度
                  spreadRadius: 2, // 擴散半徑
                  blurRadius: 5, // 模糊半徑
                  offset: Offset(3, 3), // 陰影位移 (x, y)
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${widget.content}"),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.onLoveChanged(!widget.loved);
                      });
                    },
                    icon: widget.loved
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Updatepage(task: task)));
                      setState(() {
                        if (result != task.content) {
                          widget.content = result;
                        }
                      });
                    },
                    icon: Icon(Icons.edit_note))
              ],
            )));
  }
}
