import 'package:blogs_app_with_api_call/logic/bloc/blogs_bloc.dart';
import 'package:blogs_app_with_api_call/models/blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class BlogCard extends StatelessWidget {
  Blog blog;
  BlogCard({required this.blog});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Color.fromRGBO(196, 196, 196, 1),
      ),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 5, bottom: 1),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Color.fromRGBO(158, 158, 158, 1),
                  ),
                  child: Center(
                    child: Text(
                      blog.title,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<BlogsBloc>(context).add(
                    GetBlog(id: blog.id),
                  );
                  Navigator.pushNamed(context, '/blog');
                },
                child: Text('read more'),
              ),
            ],
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Color.fromRGBO(158, 158, 158, 1),
              ),
              child: Text(
                blog.body.substring(0, 70),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
