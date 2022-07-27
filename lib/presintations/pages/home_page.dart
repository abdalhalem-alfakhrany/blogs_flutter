import 'package:blogs_app_with_api_call/logic/bloc/blogs_bloc.dart';
import 'package:blogs_app_with_api_call/presintations/widgets/blog_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: BlocBuilder<BlogsBloc, BlogsState>(
        builder: (context, state) {
          if (state is AllBlogsLoaded)
            return ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return BlogCard(
                  blog: state.blogs[index],
                );
              },
            );
          BlocProvider.of<BlogsBloc>(context).add(Get100Blog());
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
