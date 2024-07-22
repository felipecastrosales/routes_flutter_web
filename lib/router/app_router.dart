import 'package:auto_route/auto_route.dart';

import 'package:routes_flutter_web/pages/checkout_page.dart';
import 'package:routes_flutter_web/pages/course_details_page.dart';
import 'package:routes_flutter_web/pages/course_list_page.dart';
import 'package:routes_flutter_web/pages/home_page.dart';
import 'package:routes_flutter_web/pages/login_page.dart';
import 'guards/check_if_logged_in.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  AppRouter({
    required CheckIfLoggedIn checkIfLoggedIn,
  }) : _checkIfLoggedIn = checkIfLoggedIn;

  final CheckIfLoggedIn _checkIfLoggedIn;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        CustomRoute(
          page: CourseListRoute.page,
          path: '/courses',
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          maintainState: false,
        ),
        AutoRoute(
          page: CourseDetailsRoute.page,
          path: '/courses/:courseId',
        ),
        // AutoRoute(page: UsersPageRoute.page, path: '/users'),
        // RedirectRoute(path: '/users/*', redirectTo: '/'),
        AutoRoute(
          page: CheckoutRoute.page,
          path: '/checkout',
          guards: [_checkIfLoggedIn],
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
