import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(PostsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(appBar: AppBar(
    title: const Text('Posts'),
  ),
    body: Center(child: ListView.builder(
      itemCount: state.postList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text(
                'id:' +
                state.postList[index].id.toString() +
                '-:' +
                state.postList[index].title),
          ),
        );
      },
    ),),
  );;
}
