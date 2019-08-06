import 'base_view.dart';
import 'package:flutter/material.dart';
import '../../core/viewmodels/home_model.dart';
import '../../core/enums/viewstate.dart';

class HomeView extends StatelessWidget
{
  @override 
  Widget build(BuildContext context){
    return BaseView<HomeModel>(
      onModelReady: (model)=>model.getList(),
      builder:(context,model,child) => Scaffold(
        appBar: new AppBar(
          title: new Text("To Do"),
        ),
        body:model.state == ViewState.Busy
        ? Center(child: CircularProgressIndicator(),)
        : ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index) => ListTile(
            title: new Text(model.items[index].title),
            subtitle: new Text(model.items[index].description),
            onTap: (){               
              Navigator.pushNamed(context, 'work_item', arguments: model.items[index]);
            },
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: (){ 
            Navigator.pushNamed(context,'add_task');
          },
          child: Icon(Icons.add,size:30.0),
          foregroundColor: Colors.white,
        ),
      )
    );
  }
}