import 'package:fish_redux/fish_redux.dart';

enum PostAction { action, onRemove }

class PostActionCreator {
  static Action onAction() {
    return const Action(PostAction.action);
  }

  static Action onRemoveAction(int uniqueId) {
    return Action(PostAction.onRemove, payload: uniqueId);
  }
}
