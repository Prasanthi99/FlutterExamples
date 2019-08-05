import '../enums/viewstate.dart';
import '../models/post.dart';
import '../services/api.dart';
import '../../locator.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import 'base_model.dart';

class HomeModel extends BaseModel {
  Api _api = kiwi.Container().resolve<Api>();

  List<Post> posts;

  Future getPosts(int userId) async {
    setState(ViewState.Busy);
    posts = await _api.getPostsForUser(userId);
    setState(ViewState.Idle);
  }
}