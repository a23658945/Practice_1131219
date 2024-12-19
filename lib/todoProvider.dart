import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dataList.dart';

class Todoprovider extends ChangeNotifier{
final List<TodoData> _todos = [];
List<TodoData> get todos => _todos;

}