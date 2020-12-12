import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PostState> buildEffect() {
  return combineEffects(<Object, Effect<PostState>>{
    PostAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PostState> ctx) {
}
