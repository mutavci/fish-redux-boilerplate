import 'package:fish_redux/fish_redux.dart';

class headerState implements Cloneable<headerState> {

  @override
  headerState clone() {
    return headerState();
  }
}

headerState initState(Map<String, dynamic> args) {
  return headerState();
}
