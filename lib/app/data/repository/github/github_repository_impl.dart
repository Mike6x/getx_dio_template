import 'package:get/get.dart';


import '../../../core/configs/configs_index.dart';
import '/app/data/models/github/github_project_search_response.dart';
import '../../models/github/github_item.dart';
import '/app/data/apis/github/github_remote_data_source.dart';
import '/app/data/repository/github/github_repository.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource _remoteSource =
      Get.find(tag: (GithubRemoteDataSource).toString());

  @override
  Future<GithubProjectSearchResponse> searchProject(
      SearchQueryParam queryParam) {
    return _remoteSource.searchGithubProject(queryParam);
  }

  @override
  Future<GithubItem> getProject(String userName, String repositoryName) {
    return _remoteSource.getGithubProjectDetails(userName, repositoryName);
  }
}
