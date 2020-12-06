import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_boilerplate/router.dart';
import 'package:flutter/material.dart' hide Action, Page;


Widget createApp() {
  final AbstractRoutes routes = Routes.routes;
  return MaterialApp(
    title: 'Fish Redux Boilerplate',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('dashboard', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}


