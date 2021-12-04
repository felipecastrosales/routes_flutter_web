// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/course_details_page.dart' as _i3;
import '../pages/course_list_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CourseListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CourseListPage());
    },
    CourseDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailsRouteArgs>(
          orElse: () =>
              CourseDetailsRouteArgs(id: pathParams.getString('courseId')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CourseDetailsPage(key: args.key, id: args.id));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(CourseListRoute.name, path: '/courses'),
        _i4.RouteConfig(CourseDetailsRoute.name, path: '/courses/:courseId')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.CourseListPage]
class CourseListRoute extends _i4.PageRouteInfo<void> {
  const CourseListRoute() : super(name, path: '/courses');

  static const String name = 'CourseListRoute';
}

/// generated route for [_i3.CourseDetailsPage]
class CourseDetailsRoute extends _i4.PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute({_i5.Key? key, required String id})
      : super(name,
            path: '/courses/:courseId',
            args: CourseDetailsRouteArgs(key: key, id: id),
            rawPathParams: {'courseId': id});

  static const String name = 'CourseDetailsRoute';
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs({this.key, required this.id});

  final _i5.Key? key;

  final String id;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{key: $key, id: $id}';
  }
}
