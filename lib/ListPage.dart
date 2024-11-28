import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Map<String, dynamic>> task = [{"content":"Eat launch at 12pm",
    "checked":true
  }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task List"),
        actions: [
          IconButton(
              onPressed: () {},
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
      body: ListView(
        children: task.map((e)=>buildListTile(e["checked"],e["content"])
      ).toList(),
    ));
  }
}


Widget buildListTile(bool checked, String content){
  return ListTile(
              leading: Checkbox(value: checked, onChanged: (e) {}),
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
                    Text("$content"),
                    SizedBox(width: 50,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit_note))
                  ],
                )
              ));
}
