import 'package:get/get.dart';

import '../../../core/configs/configs_index.dart';
import '../../apis/posts/post_api.dart';
import '../../models/posts/post_search_response.dart';
import 'post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostApi _remoteSource = Get.find(tag: (PostApi).toString());

  @override
  Future<PostSearchResponse> searchPosts(SearchQueryParam queryParam) {
    return _remoteSource.searchPost(queryParam);
  }
}
