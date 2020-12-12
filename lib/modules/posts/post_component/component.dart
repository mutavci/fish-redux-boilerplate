import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
export 'state.dart';

class PostComponent extends Component<PostState> {
  PostComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
        );
}
