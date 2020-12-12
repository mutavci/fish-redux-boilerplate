import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<PostsState> buildReducer() {
  return asReducer(
    <Object, Reducer<PostsState>>{
      PostsAction.action: _onAction,
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
  return newState;
}
