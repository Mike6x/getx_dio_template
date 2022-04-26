import 'package:get/get.dart';

import '../data/apis/auth/auth_index.dart';
import '../data/apis/github/github_index.dart';
import '../data/apis/posts/post_index.dart';

class RemoteSourceServices {
  static Future init() async {
    Get.put<GithubRemoteDataSource>(GithubRemoteDataSourceImpl(),
      tag: (GithubRemoteDataSource).toString());

    Get.put<PostApi>(PostApiImpl(), tag: (PostApi).toString());

    Get.put<AuthApi>(AuthApiImpl(), tag: (AuthApi).toString());
  }
}
