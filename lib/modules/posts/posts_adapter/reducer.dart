import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/state.dart';

import 'action.dart';

Reducer<PostsState> buildReducer() {
  return asReducer(
    <Object, Reducer<PostsState>>{
      PostsAction.action: _onAction,
    },
  );
}

PostsState _onAction(PostsState state, Action action) {
  final PostsState newState = state.clone();
  return newState;
}
