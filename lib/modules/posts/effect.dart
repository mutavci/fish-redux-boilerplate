import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/apis/posts.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/state.dart';

import 'action.dart';
import 'state.dart';

Effect<PostsState> buildEffect() {
  return combineEffects(<Object, Effect<PostsState>>{
    PostsAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<PostsState> ctx) {}

void _onInit(Action action, Context<PostsState> ctx) {
  PostsApi.getPosts().then((value) {
    List<PostState> posts = [];
    for (var item in value) {
      posts.add(PostState(title: item.title, id: item.id));
    }
    ctx.dispatch(PostsActionCreator.getPostsAction(posts));
  });
}
