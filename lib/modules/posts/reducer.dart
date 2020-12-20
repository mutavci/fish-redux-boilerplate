import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'action.dart';
import 'state.dart';

Reducer<PostsState> buildReducer() {
  return asReducer(
    <Object, Reducer<PostsState>>{
      PostsAction.refleshGetPosts: _onAction,
      PostsAction.getPostAction: _getPostAction,
    },
  );
}

PostsState _onAction(PostsState state, Action action) {
  final PostsState newState = state.clone();
  return newState;
}

PostsState _getPostAction(PostsState state, Action action) {
  final List<PostState> postList = action.payload ?? <PostState>[];
  final PostsState newState = state.clone();
  newState.postList = postList;
  state.refreshController.refreshCompleted();
  return newState;
}
