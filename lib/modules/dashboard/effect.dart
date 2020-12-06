import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action, Page;
import 'action.dart';
import 'state.dart';

Effect<DashboardState> buildEffect() {
  return combineEffects(<Object, Effect<DashboardState>>{
    DashboardAction.action: _onAction,
    DashboardAction.goToPostsAction : _goToPostsAction
  });
}

void _onAction(Action action, Context<DashboardState> ctx) {
}
void _goToPostsAction(Action action, Context<DashboardState> ctx) {
  Navigator.of(ctx.context)
      .pushNamed('posts', arguments: null)
      .then((dynamic post) {
  });
}
