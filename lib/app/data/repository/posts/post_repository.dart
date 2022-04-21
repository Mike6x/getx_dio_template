import '../../../core/models/models_index.dart';
import '../../models/posts/post_search_response.dart';

abstract class PostRepository {
  Future<PostSearchResponse> searchPosts(SearchQueryParam queryParam);
}
