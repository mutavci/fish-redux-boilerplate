import 'package:fish_redux/fish_redux.dart';

class DashboardState implements Cloneable<DashboardState> {

  @override
  DashboardState clone() {
    return DashboardState();
  }
}

DashboardState initState(Map<String, dynamic> args) {
  return DashboardState();
}
