import 'package:auto_route/auto_route.dart';

import 'package:routes_flutter_web/pages/checkout_page.dart';
import 'package:routes_flutter_web/pages/course_details_page.dart';
import 'package:routes_flutter_web/pages/course_list_page.dart';
import 'package:routes_flutter_web/pages/home_page.dart';
import 'package:routes_flutter_web/pages/login_page.dart';
import 'guards/check_if_logged_in.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(
      page: CourseListPage,
      path: '/courses',
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      maintainState: false,
    ),
    AutoRoute(page: CourseDetailsPage, path: '/courses/:courseId'),
    // AutoRoute(page: UsersPage, path: '/users'),
    // RedirectRoute(path: '/users/*', redirectTo: '/'),
    AutoRoute(
      page: CheckoutPage,
      path: '/checkout',
      guards: [CheckIfLoggedIn],
    ),
    AutoRoute(page: LoginPage, path: '/login'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
