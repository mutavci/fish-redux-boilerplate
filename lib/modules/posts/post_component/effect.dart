import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/posts_adapter/action.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart' hide Action, Page;

Effect<PostState> buildEffect() {
  return combineEffects(<Object, Effect<PostState>>{
    PostAction.action: _onAction,
    PostAction.onRemove: _onRemove
  });
}

void _onAction(Action action, Context<PostState> ctx) {}

void _onRemove(Action action, Context<PostState> ctx) async {
  final String select = await showDialog<String>(
      context: ctx.context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          title: Text('Are you sure to delete "${ctx.state.title}"?'),
          actions: <Widget>[
            GestureDetector(
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () => Navigator.of(buildContext).pop(),
            ),
            GestureDetector(
              child: const Text('Yes', style: TextStyle(fontSize: 16.0)),
              onTap: () => Navigator.of(buildContext).pop('Yes'),
            )
          ],
        );
      });

  if (select == 'Yes') {
    ctx.dispatch(PostsAdapterActionCreator.onRemovePost(ctx.state.id));
  }
}
