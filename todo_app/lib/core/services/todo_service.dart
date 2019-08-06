import '../models/task_item.dart';

class ToDoService{
  List<TaskItem> getList(){
    return new List<TaskItem>.generate(10,(i) {  
      return new TaskItem(
        title: 'item $i',
        description : 'Description of $i');
     }
    );
  }
}