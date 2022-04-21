import 'package:dio/dio.dart';
import '../../../core/configs/search_query_param.dart';
import '../api_routes.dart';
import '/app/core/base/base_remote_source.dart';

import '/app/data/models/github/github_project_search_response.dart';
import '../../models/github/github_item.dart';
import '/app/data/apis/github/github_remote_data_source.dart';
//import '/app/network/dio_provider.dart';

class GithubRemoteDataSourceImpl extends BaseRemoteSource
    implements GithubRemoteDataSource {
  @override
  Future<GithubProjectSearchResponse> searchGithubProject(
    SearchQueryParam queryParam) {
    var endpoint = "${ApiRoutes.githubUrl}${ApiRoutes.githubSearch}";
    //var endpoint = "${DioProvider.baseUrl}/search/repositories";
    var dioCall = dioClient.get(endpoint, queryParameters: queryParam.toJson());

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseGithubProjectSearchResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GithubItem> getGithubProjectDetails(String userName, String repositoryName) {
    var endpoint = "${ApiRoutes.githubUrl}/repos/$userName/$repositoryName";

   //var endpoint = "${DioProvider.baseUrl}/repos/$userName/$repositoryName";
    var dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseGithubProjectResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  GithubProjectSearchResponse _parseGithubProjectSearchResponse(
      Response<dynamic> response) {
    return GithubProjectSearchResponse.fromJson(response.data);
  }

  GithubItem _parseGithubProjectResponse(Response<dynamic> response) {
    return GithubItem.fromJson(response.data);
  }
}
