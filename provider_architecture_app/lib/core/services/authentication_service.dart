import 'dart:async';

import '../models/user.dart';
import '../../locator.dart';
import 'api.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class AuthenticationService {
  Api _api =  kiwi.Container().resolve<Api>();
  StreamController<User> userController = StreamController<User>();

  Future<bool> login(int userId) async {
    var fetchedUser = await _api.getUserProfile(userId);

    var hasUser = fetchedUser != null;
    if(hasUser) {
      userController.add(fetchedUser);
    }

    return hasUser;
  }
}