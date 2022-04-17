import 'package:get/get.dart';

import '/app/data/apis/github/github_remote_data_source.dart';
import '/app/data/apis/github/github_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRemoteDataSource>(
      () => GithubRemoteDataSourceImpl(),
      tag: (GithubRemoteDataSource).toString(),
    );
  }
}
