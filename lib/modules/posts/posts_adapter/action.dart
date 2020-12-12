import 'package:fish_redux/fish_redux.dart';

enum PostsAction { action }

class PostsActionCreator {
  static Action onAction() {
    return const Action(PostsAction.action);
  }
}
