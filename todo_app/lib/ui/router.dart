import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/models/task_item.dart';
import '../ui/views/home_view.dart';
import '../ui/views/task_item_view.dart';
import '../ui/views/add_task_view.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings route){
    switch(route.name){
      case 'work_item' : 
        var item = route.arguments as TaskItem;
        return MaterialPageRoute(builder: (_)=> TaskItemView(task : item));
      case 'home' :return  MaterialPageRoute(builder: (_)=>HomeView());
      case 'add_task' : return MaterialPageRoute(builder: (_)=> AddTaskView());
      default: return MaterialPageRoute(builder: (_)=>Scaffold(body: new Text("No route defined") ));
    }
  }
}