import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({
    Key? key,
    @PathParam('courseId') required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course $id'),
      ),
    );
  }
}
