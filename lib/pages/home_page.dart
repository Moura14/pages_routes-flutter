import 'package:flutter/material.dart';
import 'package:routes_flutter/main.dart';
import 'package:routes_flutter/route/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final AppRouter router = getIt();
            router.pushNamed('/courses');
          },
          child: const Text('Ver lista de cursos'),
        ),
      ),
    );
  }
}
