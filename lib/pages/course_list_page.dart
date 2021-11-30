import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'course_details_page.dart';

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
              final data = await Get.to(
                () => CourseDetailsPage(
                  id: i.toString(),
                ),
              );
              // ignore: avoid_print
              print(data);
            },
          );
        },
      ),
    );
  }
}
