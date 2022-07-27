import 'dart:convert';

import 'package:blogs_app_with_api_call/models/blog.dart';
import 'package:http/http.dart' as http;

// 3f6d43f816194a399b0590b6bcd6a60a
class BlogsApi {
  Future<List<Blog>> get100Blog() async {
    List<dynamic> json = jsonDecode(
      await http
          .get(
            Uri.http('jsonplaceholder.typicode.com', 'posts'),
          )
          .then(
            (value) => value.body,
          ),
    );
    return json
        .map((e) => Blog(id: e['id'], title: e['title'], body: e['body']))
        .toList();
  }

  Future<Blog> getBlog(int id) async {
    var json = await http
        .get(
          Uri.http('jsonplaceholder.typicode.com', 'posts/$id'),
        )
        .then(
          (value) => value.body,
        );
    return Blog.fromJson(jsonDecode(json));
  }
}
