import 'package:mvvm_posts_view/features/home/data/models/posts_model/post_model.dart';

class GetPostViewModel {
   PostModel? postModel;

  GetPostViewModel({this.postModel});

  get id => postModel?.id;

  get userId => postModel?.userId;

  get title => postModel?.title?.toUpperCase();

  get body => postModel?.body;
}
