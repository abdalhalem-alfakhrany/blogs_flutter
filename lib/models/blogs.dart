import 'blog.dart';

class Blogs {
  List<Blog> blogs = [];

  Blogs({
    required this.blogs,
  });

  Blogs.fromJson(List<dynamic> json) {
    json.forEach(
      (element) {
        blogs.add(
          Blog(
            id: element['id'],
            title: element['title'],
            body: element['body'],
          ),
        );
      },
    );
  }
}
