import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/post_component/component.dart';
import 'package:fish_redux_boilerplate/modules/posts/state.dart';

import 'reducer.dart';

class PostsAdapter extends SourceFlowAdapter<PostsState> {
  static const String post = "post_componenet";
  PostsAdapter()
      : super(
          pool: <String, Component<Object>>{post: PostComponent()},
          reducer: buildReducer(),
        );
}
