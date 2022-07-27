import 'package:blogs_app_with_api_call/presintations/pages/blog_page.dart';
import 'package:blogs_app_with_api_call/presintations/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  static Route onGenarateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/blog':
        return MaterialPageRoute(
          builder: (context) => BlogPage(),
        );
    }
    return _errorRoue();
  }

  static Route _errorRoue() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text('Error Ocurde')),
        body: Center(
          child: Text('Error'),
        ),
      ),
    );
  }
}
