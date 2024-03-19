import 'package:mvvm_posts_view/features/home/data/models/posts_model/post_model.dart';

abstract class HomeRepo
{
  Future<List<PostModel>> getAllPosts();
  Future<List<PostModel>> fetchPostByID(String id);

}