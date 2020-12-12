import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/posts_adapter/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PostsPage extends Page<PostsState, Map<String, dynamic>> {
  PostsPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<PostsState>(
              adapter: NoneConn<PostsState>() + PostsAdapter(),
              slots: <String, Dependent<PostsState>>{}),
          middleware: <Middleware<PostsState>>[],
        );
}
