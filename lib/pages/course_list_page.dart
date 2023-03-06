import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class CourseListPage extends StatelessWidget {
  const CourseListPage({
    super.key,
    @QueryParam('s') this.search,
    @QueryParam('p') this.page,
  });

  final String? search;
  final int? page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de cursos buscando por $search na página $page'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (_, i) {
          return ListTile(
            title: Text('Curso $i'),
            onTap: () async {
              context.router.pushNamed('/courses/$i');
            },
          );
        },
      ),
    );
  }
}
