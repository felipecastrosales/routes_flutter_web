// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CheckoutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CheckoutPage(),
      );
    },
    CourseDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailsRouteArgs>(
          orElse: () =>
              CourseDetailsRouteArgs(id: pathParams.getString('courseId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CourseListRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CourseListRouteArgs>(
          orElse: () => CourseListRouteArgs(
                search: queryParams.optString('search'),
                page: queryParams.optInt('page'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseListPage(
          key: args.key,
          search: args.search,
          page: args.page,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
  };
}

/// generated route for
/// [CheckoutPage]
class CheckoutRoute extends PageRouteInfo<void> {
  const CheckoutRoute({List<PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CourseDetailsPage]
class CourseDetailsRoute extends PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          CourseDetailsRoute.name,
          args: CourseDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'courseId': id},
          initialChildren: children,
        );

  static const String name = 'CourseDetailsRoute';

  static const PageInfo<CourseDetailsRouteArgs> page =
      PageInfo<CourseDetailsRouteArgs>(name);
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [CourseListPage]
class CourseListRoute extends PageRouteInfo<CourseListRouteArgs> {
  CourseListRoute({
    Key? key,
    String? search,
    int? page,
    List<PageRouteInfo>? children,
  }) : super(
          CourseListRoute.name,
          args: CourseListRouteArgs(
            key: key,
            search: search,
            page: page,
          ),
          rawQueryParams: {
            'search': search,
            'page': page,
          },
          initialChildren: children,
        );

  static const String name = 'CourseListRoute';

  static const PageInfo<CourseListRouteArgs> page =
      PageInfo<CourseListRouteArgs>(name);
}

class CourseListRouteArgs {
  const CourseListRouteArgs({
    this.key,
    this.search,
    this.page,
  });

  final Key? key;

  final String? search;

  final int? page;

  @override
  String toString() {
    return 'CourseListRouteArgs{key: $key, search: $search, page: $page}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
