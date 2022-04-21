import 'package:get/get.dart';

import '../data/apis/posts/post_api.dart';
import '../data/apis/posts/post_api_impl.dart';
import '/app/data/apis/github/github_remote_data_source.dart';
import '/app/data/apis/github/github_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRemoteDataSource>(
      () => GithubRemoteDataSourceImpl(),
      tag: (GithubRemoteDataSource).toString(),
    );
    
    Get.lazyPut<PostApi>(
      () => PostApiImpl(),
      tag: (PostApi).toString(),
    );
  }
}
