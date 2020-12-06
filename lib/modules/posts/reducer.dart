import 'package:fish_redux/fish_redux.dart';

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

  final PostsState newState = state.clone();
  newState.postList = action.payload;
  return newState;
}
