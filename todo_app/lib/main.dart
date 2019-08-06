import 'package:flutter/material.dart';
import 'package:todo_app/locator.dart';
import 'ui/router.dart';

void main() { 
  configure();
   runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context)
  {
     return MaterialApp(     
      title: "To do List",       
      theme: ThemeData(),
      initialRoute: 'home',
      onGenerateRoute: Router.generateRoute,
     );    
  }    
}
