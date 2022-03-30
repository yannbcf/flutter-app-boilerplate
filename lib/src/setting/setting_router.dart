import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> handleRoute(RouteSettings settings) {
    switch (settings.name) {
      // example
      // case Screen.routeName:
      //  return MaterialPageRoute(builder: (_) => const Screen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
