import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class headerComponent extends Component<headerState> {
  headerComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<headerState>(
                adapter: null,
                slots: <String, Dependent<headerState>>{
                }),);

}
