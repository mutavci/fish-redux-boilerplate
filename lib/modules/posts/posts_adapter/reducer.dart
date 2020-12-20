import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/state.dart';

import 'action.dart';

Reducer<PostsState> buildReducer() {
  return asReducer(<Object, Reducer<PostsState>>{
    PostsAdapterAction.action: _onAction,
    PostsAdapterAction.onRemove: _remove
  });
}

PostsState _onAction(PostsState state, Action action) {
  final PostsState newState = state.clone();
  return newState;
}

PostsState _remove(PostsState state, Action action) {
  final int unique = action.payload;
  return state.clone()
    ..postList =
        (state.postList.toList()..removeWhere((state) => state.id == unique));
}
