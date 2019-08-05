import 'dart:async';

import '../enums/viewstate.dart';
import '../services/authentication_service.dart';
import '../viewmodels/base_model.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import '../../locator.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService = kiwi.Container().resolve<AuthenticationService>();

  String errorMessage;

  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    // Not a number
    if(userId == null) {
      errorMessage = 'Value entered is not a number';
      setState(ViewState.Idle);
      return false;
    }
     var success = await _authenticationService.login(userId);
    // Handle potential error here too. 

    setState(ViewState.Idle);
    return success;
  }  
}