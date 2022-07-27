import 'package:blogs_app_with_api_call/logic/bloc/blogs_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogsBloc, BlogsState>(
      builder: (context, state) {
        if (state is BlogLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.blog.title),
            ),
            body: Center(
              child: Text(
                state.blog.body,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('loading ...'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
