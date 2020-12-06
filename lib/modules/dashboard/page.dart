import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DashboardPage extends Page<DashboardState, Map<String, dynamic>> {
  DashboardPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<DashboardState>(
                adapter: null,
                slots: <String, Dependent<DashboardState>>{
                }),
            middleware: <Middleware<DashboardState>>[
            ],);

}
