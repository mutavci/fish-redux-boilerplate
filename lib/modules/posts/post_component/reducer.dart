import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PostState> buildReducer() {
  return asReducer(
    <Object, Reducer<PostState>>{
      PostAction.action: _onAction,
    },
  );
}

PostState _onAction(PostState state, Action action) {
  final PostState newState = state.clone();
  return newState;
}
