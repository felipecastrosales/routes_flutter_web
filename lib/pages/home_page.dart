import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.router.push(
            //   CourseListRoute(),
            // );
            context.router.pushNamed('/courses');
          },
          child: const Text('Courses list'),
        ),
      ),
    );
  }
}
