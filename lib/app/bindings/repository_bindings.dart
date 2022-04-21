import 'package:get/get.dart';

import '../data/repository/posts/post_repository.dart';
import '../data/repository/posts/post_repository_impl.dart';
import '/app/data/repository/github/github_repository.dart';
import '/app/data/repository/github/github_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRepository>(
      () => GithubRepositoryImpl(),
      tag: (GithubRepository).toString(),
    );
    Get.lazyPut<PostRepository>(
      () => PostRepositoryImpl(),
      tag: (PostRepository).toString(),
    );
  }
}
