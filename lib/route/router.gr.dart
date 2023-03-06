// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/checkout_page.dart' as _i4;
import '../pages/course_details_page.dart' as _i3;
import '../pages/course_list_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;
import '../pages/login_page.dart' as _i5;
import 'guards/check_if_loggedin.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter({
    _i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
    required this.checkIfLoggedIn,
  }) : super(navigatorKey);

  final _i8.CheckIfLoggedIn checkIfLoggedIn;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CourseListRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CourseListRouteArgs>(
          orElse: () => CourseListRouteArgs(
                search: queryParams.optString('s'),
                page: queryParams.optInt('p'),
              ));
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.CourseListPage(
          key: args.key,
          search: args.search,
          page: args.page,
        ),
        maintainState: false,
        transitionsBuilder: _i6.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CourseDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailsRouteArgs>(
          orElse: () =>
              CourseDetailsRouteArgs(id: pathParams.getString('courseId')));
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CourseDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CkeckoutRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CkeckoutPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          CourseListRoute.name,
          path: '/courses',
        ),
        _i6.RouteConfig(
          CourseDetailsRoute.name,
          path: '/courses/:courseId',
        ),
        _i6.RouteConfig(
          CkeckoutRoute.name,
          path: '/checkout',
          guards: [checkIfLoggedIn],
        ),
        _i6.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i6.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CourseListPage]
class CourseListRoute extends _i6.PageRouteInfo<CourseListRouteArgs> {
  CourseListRoute({
    _i7.Key? key,
    String? search,
    int? page,
  }) : super(
          CourseListRoute.name,
          path: '/courses',
          args: CourseListRouteArgs(
            key: key,
            search: search,
            page: page,
          ),
          rawQueryParams: {
            's': search,
            'p': page,
          },
        );

  static const String name = 'CourseListRoute';
}

class CourseListRouteArgs {
  const CourseListRouteArgs({
    this.key,
    this.search,
    this.page,
  });

  final _i7.Key? key;

  final String? search;

  final int? page;

  @override
  String toString() {
    return 'CourseListRouteArgs{key: $key, search: $search, page: $page}';
  }
}

/// generated route for
/// [_i3.CourseDetailsPage]
class CourseDetailsRoute extends _i6.PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute({
    _i7.Key? key,
    required String id,
  }) : super(
          CourseDetailsRoute.name,
          path: '/courses/:courseId',
          args: CourseDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'courseId': id},
        );

  static const String name = 'CourseDetailsRoute';
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i7.Key? key;

  final String id;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.CkeckoutPage]
class CkeckoutRoute extends _i6.PageRouteInfo<void> {
  const CkeckoutRoute()
      : super(
          CkeckoutRoute.name,
          path: '/checkout',
        );

  static const String name = 'CkeckoutRoute';
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}
