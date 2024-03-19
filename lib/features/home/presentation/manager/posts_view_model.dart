import 'package:mvvm_posts_view/features/home/data/models/posts_model/post_model.dart';
import 'package:mvvm_posts_view/features/home/data/repo/home_repo/home_repo.dart';
import 'package:mvvm_posts_view/features/home/presentation/manager/getpost_view_model.dart';

class PostsViewModel {
  final String title = "All Posts";

  HomeRepo? homeRepo;

  PostsViewModel({this.homeRepo});

  Future<List<GetPostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await homeRepo!.getAllPosts();
    return list.map((post) => GetPostViewModel(postModel: post)).toList();
  }
}
