import 'package:get/get.dart';

import '../../../core/models/github/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/model/item.dart';
import '/app/data/apis/github/github_remote_data_source.dart';
import '/app/data/repository/github/github_repository.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource _remoteSource =
      Get.find(tag: (GithubRemoteDataSource).toString());

  @override
  Future<GithubProjectSearchResponse> searchProject(
      GithubSearchQueryParam queryParam) {
    return _remoteSource.searchGithubProject(queryParam);
  }

  @override
  Future<Item> getProject(String userName, String repositoryName) {
    return _remoteSource.getGithubProjectDetails(userName, repositoryName);
  }
}