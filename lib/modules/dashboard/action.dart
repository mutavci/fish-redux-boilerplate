import 'package:fish_redux/fish_redux.dart';

enum DashboardAction { action,goToPostsAction }

class DashboardActionCreator {
  static Action onAction() {
    return const Action(DashboardAction.action);
  }
  static Action onGoToPostAction(){
    return const Action(DashboardAction.goToPostsAction);
  }
}
