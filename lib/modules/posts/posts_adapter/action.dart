import 'package:fish_redux/fish_redux.dart';

enum PostsAdapterAction { action, onRemove }

class PostsAdapterActionCreator {
  static Action onAction() {
    return Action(PostsAdapterAction.action);
  }

  static Action onRemovePost(int uniqueId) {
    return Action(PostsAdapterAction.onRemove, payload: uniqueId);
  }
}
