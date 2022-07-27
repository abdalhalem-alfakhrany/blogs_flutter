import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blogs_app_with_api_call/models/blog.dart';
import 'package:blogs_app_with_api_call/services/blogs_api.dart';
import 'package:meta/meta.dart';

part 'blogs_event.dart';
part 'blogs_state.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  BlogsBloc() : super(BlogsInitial());

  @override
  Stream<BlogsState> mapEventToState(
    BlogsEvent event,
  ) async* {
    if (event is Get100Blog) {
      yield AllBlogsLoaded(blogs: await _get100Blog());
    } else if (event is GetBlog) {
      yield BlogLoaded(blog: await _getBlog(event.id));
    }
  }

  Future<List<Blog>> _get100Blog() async =>
      await BlogsApi().get100Blog().then((value) => value);

  Future<Blog> _getBlog(int id) async =>
      await BlogsApi().getBlog(id).then((value) => value);
}
