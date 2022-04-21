import '../../../core/configs/search_query_param.dart';
import '../../models/posts/post_search_response.dart';

abstract class PostApi {
  Future<PostSearchResponse> searchPost(SearchQueryParam queryParam);
}
