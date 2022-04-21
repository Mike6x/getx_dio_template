import '../../../core/models/search_query_param.dart';
import '/app/data/models/github/github_project_search_response.dart';
import '../../models/github/github_item.dart';

abstract class GithubRemoteDataSource {
  Future<GithubProjectSearchResponse> searchGithubProject(
      SearchQueryParam queryParam);

  Future<GithubItem> getGithubProjectDetails(String userName, String repositoryName);
}
