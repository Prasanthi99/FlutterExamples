import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/models/task_item.dart';
import 'dart:convert';

class AddTaskView extends StatefulWidget{
  @override
  AddTaskViewState createState() => AddTaskViewState();
}

class AddTaskViewState extends State<AddTaskView>
{
  @override 
  Widget build(BuildContext context)
  {
    final _formKey = GlobalKey<AddTaskViewState>();
    return Scaffold(
      appBar: AppBar(
        title: new Text("Add Task"),
        actions: <Widget>[
          FlatButton(child: Text("Save"),onPressed: (){})
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
           children: <Widget>[
             new Text("Title"),
             new TextFormField(
                validator: (value)
                {
                  if((value.isEmpty)){
                    return "Title should not be empty";
                  }
                  return null;
                },
             ),
             new Text("Description"),
             new TextFormField(
               validator: (value)
               {
                  if(value.isEmpty)
                  {
                    return "Description should not be empty";
                  }
                  return null;
               },
             ),
             Center(child: new RaisedButton(              
              child: Text("Save"),
              color: Colors.blueAccent,
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var data = prefs.getString('task');  
                await prefs.setString('task', json.encode(TaskItem(title : "Test title", description : "Test description")));
              },
             ),
            )
           ],
          ),
      ),
    );
  } 
}