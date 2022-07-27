part of 'blogs_bloc.dart';

@immutable
abstract class BlogsEvent {}

class Get100Blog extends BlogsEvent {}

// ignore: must_be_immutable
class GetBlog extends BlogsEvent {
  int id;
  GetBlog({required this.id});
}
