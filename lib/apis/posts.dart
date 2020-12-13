import 'dart:async';
import 'dart:convert';

import 'package:fish_redux_boilerplate/dtos/post.dart';
import 'package:fish_redux_boilerplate/utils/http/http.dart';

class PostsApi {
  static Future<List<Post>> getPosts() async {
    var result = await HttpUtils.request(
      '/posts',
      method: HttpUtils.GET,
    );

    var postsJson = json.decode(result);
    List<Post> postsList =
        (postsJson as List).map((i) => Post.fromJson(i)).toList();
    return postsList;
  }
}
