import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(DashboardState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(appBar: AppBar(
    title: const Text('Dashboard'),
  ),body:
  Center(child: RaisedButton(child: Text("Get Posts"),
    onPressed: () => dispatch(DashboardActionCreator.onGoToPostAction()),
    color: Colors.red,
    textColor: Colors.yellow,
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    splashColor: Colors.grey,
  ),)

  );
}
