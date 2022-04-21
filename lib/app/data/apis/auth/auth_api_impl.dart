import 'dart:convert';

import 'package:dio/dio.dart';


import '../../models/auth/auth_models_index.dart';
import '../api_routes.dart';
import '/app/core/base/base_remote_source.dart';

import '/app/network/dio_provider.dart';
import 'auth_index.dart';

class AuthApiImpl extends BaseRemoteSource implements AuthApi {
  @override
  Future<LoginResponseModel> loginRequest(
      {required String email, required String password}) async {
    var endpoint = "${DioProvider.baseUrl}+ ${ApiRoutes.login}";
    var dioCall = dioClient.post(
      endpoint,
      data: jsonEncode(<String, String>{'email': email, 'password': password}),
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseLoginResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  LoginResponseModel _parseLoginResponse(Response<dynamic> response) {
    return LoginResponseModel.fromJson(response.data);

    // Future<LoginResponseModel> loginRequest(
    //     {required String email, required String password}) async {
    //   try {
    //     final res = await _dioClient.post(
    //       Endpoints.login,
    //       options: Options(headers: {
    //         'Content-Type': 'application/json',
    //       }),
    //       data:
    //           jsonEncode(<String, String>{'email': email, 'password': password}),
    //     );
    //     return LoginResponseModel.fromJson(res);
    //   } catch (e) {
    //     debugPrint("Issue in login" "" + e.toString());
    //     rethrow;
    //   }
    // }
  }

  @override
  Future forgotPasswordRequest({required String email}) {
    // TODO: implement forgotPasswordRequest
    throw UnimplementedError();
  }

  @override
  Future logoutRequest() {
    // TODO: implement logoutRequest
    throw UnimplementedError();
  }

  @override
  Future<RegisterResponseModel> registerRequest(
      {required String email, required String password}) {
    // TODO: implement registerRequest
    throw UnimplementedError();
  }

  @override
  Future resetPasswordRequest(
      {required String oldPassword, required String newPassword}) {
    // TODO: implement resetPasswordRequest
    throw UnimplementedError();
  }
}
