import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'pages/course_details_page.dart';
import 'pages/course_list_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Routes Flutter Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/courses/',
          page: () => const CourseListPage(),
        ),
        GetPage(
          name: '/courses/:id',
          page: () => CourseDetailsPage(
            id: Get.parameters['id']!,
          ),
        ),
      ],
    );
  }
}
