import 'package:fish_redux/fish_redux.dart';

class PostState implements Cloneable<PostState> {
  int userId;
  int id;
  String title;
  String body;

  PostState({this.userId, this.id, this.title, this.body});

  @override
  PostState clone() {
    return PostState()
      ..userId = userId
      ..id = id
      ..title = title
      ..body = body;
  }

  @override
  String toString() {
    return 'PostState{userId: $userId, id: $id, title: $title, body: $body}';
  }
}
