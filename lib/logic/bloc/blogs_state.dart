part of 'blogs_bloc.dart';

@immutable
abstract class BlogsState {}

class BlogsInitial extends BlogsState {}

class AllBlogsLoading extends BlogsState {}

// ignore: must_be_immutable
class AllBlogsLoaded extends BlogsState {
  List<Blog> blogs;
  AllBlogsLoaded({
    required this.blogs,
  });
}

class BlogLoading extends BlogsState {}

// ignore: must_be_immutable
class BlogLoaded extends BlogsState {
  Blog blog;
  BlogLoaded({
    required this.blog,
  });
}
