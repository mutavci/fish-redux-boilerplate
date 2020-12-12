import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Post {
  Post({this.userId, this.id, this.title, this.body});

  int userId;
  int id;
  String title;
  String body;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
      userId: json['PostId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String);
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'PostId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body
    };
