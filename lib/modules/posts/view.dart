import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(PostsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Posts'),
    ),
    body: Center(
      child: ListView.builder(
          itemCount: viewService.buildAdapter().itemCount,
          itemBuilder: viewService.buildAdapter().itemBuilder),
    ),
  );
}
