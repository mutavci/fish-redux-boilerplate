import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/dtos/post.dart';

enum PostsAction { action,getPostAction }

class PostsActionCreator {
  static Action onAction() {
    return const Action(PostsAction.action);
  }
  static Action getPostsAction(List<Post> postList){
    return  Action(PostsAction.getPostAction, payload: postList);
  }
}
