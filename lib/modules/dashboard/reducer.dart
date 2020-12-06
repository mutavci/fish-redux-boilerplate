import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DashboardState> buildReducer() {
  return asReducer(
    <Object, Reducer<DashboardState>>{
      DashboardAction.action: _onAction,
    },
  );
}

DashboardState _onAction(DashboardState state, Action action) {
  final DashboardState newState = state.clone();
  return newState;
}
