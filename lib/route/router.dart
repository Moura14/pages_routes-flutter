import 'package:auto_route/auto_route.dart';
import 'package:routes_flutter/pages/checkout_page.dart';
import 'package:routes_flutter/pages/course_details_page.dart';
import 'package:routes_flutter/pages/course_list_page.dart';
import 'package:routes_flutter/pages/home_page.dart';
import 'package:routes_flutter/pages/login_page.dart';
import 'package:routes_flutter/route/guards/check_if_loggedin.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(
        page: CourseListPage,
        path: '/courses',
        transitionsBuilder: TransitionsBuilders.slideLeft,
        maintainState: false),
    AutoRoute(page: CourseDetailsPage, path: '/courses/:courseId'),
    AutoRoute(page: CkeckoutPage, path: '/checkout', guards: [CheckIfLoggedIn]),
    AutoRoute(page: LoginPage, path: '/login'),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
