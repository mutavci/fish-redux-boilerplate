import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/state.dart';

enum PostsAction { refleshGetPosts, getPostAction, onRemove }

class PostsActionCreator {
  static Action refleshGetPosts() {
    return const Action(PostsAction.refleshGetPosts);
  }

  static Action getPostsAction(List<PostState> postList) {
    return Action(PostsAction.getPostAction, payload: postList);
  }

  static Action onRemoveAction(int uniqueId) {
    return Action(PostsAction.onRemove, payload: uniqueId);
  }
}
