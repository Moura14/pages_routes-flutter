import 'package:flutter/material.dart';
import 'package:routes_flutter/route/guards/check_if_loggedin.dart';
import 'package:get_it/get_it.dart';
import 'route/router.gr.dart';
import 'package:url_strategy/url_strategy.dart';

final getIt = GetIt.I;

void main() {
  setPathUrlStrategy();
  getIt.registerSingleton(AppRouter(checkIfLoggedIn: CheckIfLoggedIn()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AppRouter router = getIt();

    return MaterialApp.router(
      title: 'Flutter Demo Route',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
  }
}
