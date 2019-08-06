import 'package:flutter/material.dart';
import 'package:todo_app/core/models/task_item.dart';

class TaskItemView extends StatelessWidget
{
  final TaskItem task;
  TaskItemView({this.task});
  @override 
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar( title: Text(task.title)),);
  }
}