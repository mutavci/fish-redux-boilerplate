import 'package:fish_redux/fish_redux.dart';

enum PostAction { action }

class PostActionCreator {
  static Action onAction() {
    return const Action(PostAction.action);
  }
}
