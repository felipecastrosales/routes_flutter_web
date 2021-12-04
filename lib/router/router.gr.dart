// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/course_list_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CourseListRoute.name: (routeData) {
      final args = routeData.argsAs<CourseListRouteArgs>(
          orElse: () => const CourseListRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.CourseListPage(key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/'),
        _i3.RouteConfig(CourseListRoute.name, path: '/courses')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.CourseListPage]
class CourseListRoute extends _i3.PageRouteInfo<CourseListRouteArgs> {
  CourseListRoute({_i4.Key? key})
      : super(name, path: '/courses', args: CourseListRouteArgs(key: key));

  static const String name = 'CourseListRoute';
}

class CourseListRouteArgs {
  const CourseListRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CourseListRouteArgs{key: $key}';
  }
}
