import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/dtos/post.dart';

class PostsState implements Cloneable<PostsState> {
  List<Post> postList = new List<Post>();

  PostsState({this.postList});

  @override
  PostsState clone() {
    return PostsState();
  }
}

PostsState initState(Map<String, dynamic> args) {
  List<Post> tempList = new List<Post>();
  return PostsState(postList: tempList);
}
