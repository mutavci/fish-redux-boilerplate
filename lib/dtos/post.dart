import 'package:json_annotation/json_annotation.dart';
@JsonSerializable()
class Post {
  Post({this.UserId, this.id, this.title,this.body});

  int UserId;
  int id;
  String title;
  String body;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
      UserId: json['PostId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String);
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
  'PostId':instance.UserId,
  'id': instance.id,
  'title': instance.title,
  'body': instance.body
};