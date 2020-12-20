import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/state.dart';
import 'package:fish_redux_boilerplate/modules/posts/posts_adapter/adapter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PostsState extends MutableSource implements Cloneable<PostsState> {
  List<PostState> postList;
  RefreshController refreshController;
  PostsState({this.postList});

  @override
  PostsState clone() {
    return PostsState()
      ..postList = postList
      ..refreshController = refreshController;
  }

  @override
  Object getItemData(int index) {
    return postList[index];
  }

  @override
  String getItemType(int index) => PostsAdapter.post;

  @override
  int get itemCount => postList.length;

  @override
  void setItemData(int index, Object data) {
    postList[index] = data;
  }
}

PostsState initState(Map<String, dynamic> args) {
  List<PostState> tempList = new List<PostState>();
  return PostsState()
    ..postList = tempList
    ..refreshController = RefreshController(initialRefresh: true);
}
