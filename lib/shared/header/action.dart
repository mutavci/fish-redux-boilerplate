import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum headerAction { action }

class headerActionCreator {
  static Action onAction() {
    return const Action(headerAction.action);
  }
}
