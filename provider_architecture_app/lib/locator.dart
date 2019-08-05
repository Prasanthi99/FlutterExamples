//import 'package:get_it/get_it.dart';

import 'core/services/api.dart';
import 'core/services/authentication_service.dart';
import 'core/viewmodels/comments_model.dart';
import 'core/viewmodels/home_model.dart';
import 'core/viewmodels/login_model.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

// GetIt locator = GetIt();

// void setupLocator() {
//   locator.registerLazySingleton(() => AuthenticationService());
//   locator.registerLazySingleton(() => Api());

//   locator.registerFactory(() => LoginModel());
//   locator.registerFactory(() => HomeModel());
//   locator.registerFactory(() => CommentsModel());
// }

  void configure(){ 
    
    kiwi.Container()
    ..registerSingleton((c)=>AuthenticationService())
    ..registerSingleton((c)=>Api())
    ..registerFactory((c)=>LoginModel())
    ..registerFactory((c)=>HomeModel())
    ..registerFactory((c)=>CommentsModel());
  }
  