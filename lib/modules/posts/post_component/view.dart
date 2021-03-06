import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/action.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(PostState state, Dispatch dispatch, ViewService viewService) {
  return InkWell(
      child: Container(
          margin: EdgeInsets.only(top: 2, right: 1, left: 1),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    new Flexible(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            state.id.toString() + "-)" + state.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onLongPress: () {
              dispatch(PostActionCreator.onRemoveAction(state.userId));
            },
          )));
}
