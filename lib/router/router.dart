import 'package:auto_route/auto_route.dart';

import 'package:routes_flutter_web/pages/course_details_page.dart';
import 'package:routes_flutter_web/pages/course_list_page.dart';
import 'package:routes_flutter_web/pages/home_page.dart';

@MaterialAutoRouter(        
  replaceInRouteName: 'Page,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: CourseListPage, path: '/courses'),
    AutoRoute(page: CourseDetailsPage, path: '/courses/:courseId'),
    // AutoRoute(page: UsersPage, path: '/users'),
    // RedirectRoute(path: '/users/*', redirectTo: '/'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],        
)        
class $AppRouter {}