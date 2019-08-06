import 'package:todo_app/core/services/todo_service.dart';

import '../enums/viewstate.dart';
import '../models/task_item.dart';
import '../viewmodels/base_model.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class HomeModel extends BaseModel{
  ToDoService service = kiwi.Container().resolve<ToDoService>();
  List<TaskItem> items;

  Future getList() async{
    setState(ViewState.Busy);
    items = service.getList();
    setState(ViewState.Idle);
  } 
}