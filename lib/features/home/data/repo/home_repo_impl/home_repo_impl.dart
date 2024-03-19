import 'package:dio/dio.dart';
import 'package:mvvm_posts_view/features/home/data/models/posts_model/post_model.dart';
import 'package:mvvm_posts_view/features/home/data/repo/home_repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {

  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");
      var list = response.data as List;
      posts = list.map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    print(posts);
    return posts;
  }

  @override
  Future<List<PostModel>> fetchPostByID(String id) {
    // TODO: implement fetchPostByID
    throw UnimplementedError();
  }
}
