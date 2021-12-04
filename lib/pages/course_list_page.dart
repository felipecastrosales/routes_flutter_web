import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class CourseListPage extends StatelessWidget {
  const CourseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course List'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (_, i) {
          return ListTile(
            title: Text('Course $i'),
            onTap: () async {
              context.router.pushNamed('/courses/$i');
            },
          );
        },
      ),
    );
  }
}
