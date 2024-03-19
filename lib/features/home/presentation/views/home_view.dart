import 'package:flutter/material.dart';
import 'package:mvvm_posts_view/features/home/data/repo/home_repo_impl/home_repo_impl.dart';
import 'package:mvvm_posts_view/features/home/presentation/manager/getpost_view_model.dart';
import 'package:mvvm_posts_view/features/home/presentation/manager/posts_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var postsViewModel = PostsViewModel(homeRepo: HomeRepoImpl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
        child: FutureBuilder<List<GetPostViewModel>>(
          future: postsViewModel.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
