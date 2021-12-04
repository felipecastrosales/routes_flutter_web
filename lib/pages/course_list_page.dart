import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CourseListPage extends StatelessWidget {
  CourseListPage({Key? key}) : super(key: key) {
    // ignore: avoid_print
    print(Get.parameters);
  }

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
              final data = await Get.toNamed(
                '/courses/$i',
                arguments: {
                  'userId': 1234,
                },
              );
              // Get.to(CourseDetailsPage(id: '10',),);
              // ignore: avoid_print
              print(data);
            },
          );
        },
      ),
    );
  }
}
