import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<headerState> buildReducer() {
  return asReducer(
    <Object, Reducer<headerState>>{
      headerAction.action: _onAction,
    },
  );
}

headerState _onAction(headerState state, Action action) {
  final headerState newState = state.clone();
  return newState;
}
