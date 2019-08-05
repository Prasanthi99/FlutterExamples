import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/services/authentication_service.dart';
import 'locator.dart';
import 'ui/router.dart';
import 'core/models/user.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

void main() {
  configure();
  //setupLocator();   
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  StreamProvider<User>(
          initialData: User.initial(),
          builder: (context) => kiwi.Container().resolve<AuthenticationService>().userController,
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(),
            initialRoute: 'login',
            onGenerateRoute: Router.generateRoute,
          ),
    );
  }
}