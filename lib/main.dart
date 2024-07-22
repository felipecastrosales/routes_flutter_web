import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:routes_flutter_web/router/app_router.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:routes_flutter_web/router/guards/check_if_logged_in.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = AppRouter(
    checkIfLoggedIn: CheckIfLoggedIn(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Routes Flutter Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: AutoRouterDelegate(router),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
