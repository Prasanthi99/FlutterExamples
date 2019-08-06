import 'package:kiwi/kiwi.dart' as kiwi;
import 'core/viewmodels/home_model.dart';
import 'core/services/todo_service.dart';

void configure(){
  kiwi.Container()
    ..registerSingleton((c)=>ToDoService())
    ..registerFactory((c)=>HomeModel());
}