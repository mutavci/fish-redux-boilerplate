import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/state.dart';

enum PostsAction { action, getPostAction }

class PostsActionCreator {
  static Action onAction() {
    return const Action(PostsAction.action);
  }

  static Action getPostsAction(List<PostState> postList) {
    return Action(PostsAction.getPostAction, payload: postList);
  }
}
