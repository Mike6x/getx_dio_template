import 'package:dio/dio.dart';

import '../../../core/configs/search_query_param.dart';
import '../../models/posts/post_search_response.dart';
import '../api_routes.dart';
import '/app/core/base/base_remote_source.dart';
import 'post_api.dart';

class PostApiImpl extends BaseRemoteSource implements PostApi {

  @override
  Future<PostSearchResponse> searchPost(SearchQueryParam queryParam) {
    var endpoint = "${ApiRoutes.typicodeUrl}${ApiRoutes.getPosts}";
    var dioCall = dioClient.get(endpoint, queryParameters: queryParam.toJson());
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parsePostsSearchResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  PostSearchResponse _parsePostsSearchResponse(Response<dynamic> response) {
    return PostSearchResponse.fromJson(response.data);
  }
}





// import 'package:flutter/cupertino.dart';

// class PostApi {
//   // dio instance
//   final DioClient _dioClient;

//   // injecting dio instance
//   PostApi(this._dioClient);

//   /// Returns list of post in response
//   Future<PostList> getPosts() async {
//     try {
//       final res = await _dioClient.get(Endpoints.getPosts);
//       return PostList.fromJson(res);
//     } catch (e) {
//       debugPrint(e.toString());
//       rethrow;
//     }
//   }
// }
