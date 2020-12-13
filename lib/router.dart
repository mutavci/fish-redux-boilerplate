import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/modules/posts/page.dart';
import 'global_store/state.dart';
import 'global_store/store.dart';
import 'modules/dashboard/page.dart';

class Routes {
  static final PageRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'dashboard': DashboardPage(),
      'posts': PostsPage()
    },
    visitor: (String path, Page<Object, dynamic> page) {
      if (page.isTypeof<GlobalBaseState>()) {
        page.connectExtraStore<GlobalState>(GlobalStore.store,
            (Object pagestate, GlobalState appState) {
          final GlobalBaseState p = pagestate;
          if (p.themeColor != appState.themeColor) {
            if (pagestate is Cloneable) {
              final Object copy = pagestate.clone();
              final GlobalBaseState newState = copy;
              newState.themeColor = appState.themeColor;
              return newState;
            }
          }
          return pagestate;
        });
      }

      page.enhancer.append(
        /// View AOP
        viewMiddleware: <ViewMiddleware<dynamic>>[
          safetyView<dynamic>(),
        ],

        /// Adapter AOP
        adapterMiddleware: <AdapterMiddleware<dynamic>>[
          safetyAdapter<dynamic>()
        ],

        /// Effect AOP
        effectMiddleware: <EffectMiddleware<dynamic>>[
          _pageAnalyticsMiddleware<dynamic>(),
        ],

        /// Store AOP
        middleware: <Middleware<dynamic>>[
          logMiddleware<dynamic>(tag: page.runtimeType.toString()),
        ],
      );
    },
  );
}

EffectMiddleware<T> _pageAnalyticsMiddleware<T>({String tag = 'redux'}) {
  return (AbstractLogic<dynamic> logic, Store<T> store) {
    return (Effect<dynamic> effect) {
      return (Action action, Context<dynamic> ctx) {
        if (logic is Page<dynamic, dynamic> && action.type is Lifecycle) {
          // print('${logic.runtimeType} ${action.type.toString()} ');
        }
        return effect?.call(action, ctx);
      };
    };
  };
}
