class Blog {
  int id;
  String title;
  String body;

  Blog({
    required this.id,
    required this.title,
    required this.body,
  });

  Blog.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        body = json['body'];
}
