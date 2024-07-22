import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class CourseListPage extends StatelessWidget {
  const CourseListPage({
    super.key,
    @QueryParam() this.search, // @QueryParam('s') this.search,
    @QueryParam() this.page, // @QueryParam('p') this.page,
  });

  final String? search;
  final int? page;

  @override
  Widget build(BuildContext context) {
    // var routeData = RouteData.of(context).queryParams;
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List, searching for $search on page $page'),
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
