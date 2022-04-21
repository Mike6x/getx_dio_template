
import '../../../core/models/models_index.dart';
import '/app/data/models/github/github_project_search_response.dart';
import '../../models/github/github_item.dart';

abstract class GithubRepository {
  Future<GithubProjectSearchResponse> searchProject(
      SearchQueryParam queryParam);

  Future<GithubItem> getProject(String userName, String repositoryName);
}
