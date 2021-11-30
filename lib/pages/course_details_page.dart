import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course $id'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back(result: 'Hi');
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
