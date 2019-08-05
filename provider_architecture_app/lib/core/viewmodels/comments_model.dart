import '../enums/viewstate.dart';
import '../models/comment.dart';
import '../services/api.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import '../../locator.dart';
import 'base_model.dart';

class CommentsModel extends BaseModel {
  Api _api =  kiwi.Container().resolve<Api>();

  List<Comment> comments;

  Future fetchComments(int postId) async {
    setState(ViewState.Busy);
    comments = await _api.getCommentsForPost(postId);
    setState(ViewState.Idle);
  }
}