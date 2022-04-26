import 'package:get/get.dart';

import '../data/repository/auth/auth_repository_index.dart';
import '../data/repository/github/github_repository_index.dart';
import '../data/repository/posts/post_repository_index.dart';

class RepositoryServices {
  static Future init() async {
    Get.put<GithubRepository>(GithubRepositoryImpl(),
        tag: (GithubRepository).toString());

    Get.put<PostRepository>(PostRepositoryImpl(),
        tag: (PostRepository).toString());
        
    Get.put<AuthRepository>(AuthRepositoryImpl(),
        tag: (AuthRepository).toString());
  }
}
