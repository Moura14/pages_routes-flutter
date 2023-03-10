import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key, @PathParam('courseId') required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curso $id'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.router.pushNamed('/checkout');
            },
            child: const Text('Comprar')),
      ),
    );
  }
}
