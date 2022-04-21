import '../../../core/models/models_index.dart';
import '../../models/posts/post_search_response.dart';

abstract class PostApi {
  Future<PostSearchResponse> searchPost(SearchQueryParam queryParam);
}
