import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'state.dart';

Widget buildView(PostsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Container(
        color: Color(0xfff5f5f5),
        child: SafeArea(
          child: SmartRefresher(
            onRefresh: () async {
              await Future.delayed(Duration(milliseconds: 1000));
              dispatch(PostsActionCreator.refleshGetPosts());
            },
            header: WaterDropHeader(),
            controller: state.refreshController,
            enablePullUp: true,
            enablePullDown: true,
            child: ListView.builder(
                itemCount: viewService.buildAdapter().itemCount,
                itemBuilder: viewService.buildAdapter().itemBuilder),
          ),
        ),
      ));
}
