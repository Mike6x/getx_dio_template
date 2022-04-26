
import 'package:flutter_getx_template/app/data/apis/auth/auth_index.dart';
import 'package:get/get.dart';

import '../../models/auth/auth_models_index.dart';
import 'auth_repository_index.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _remoteSource = Get.find(tag: (AuthApi).toString());

  @override
  Future<LoginResponseModel> loginRequest(String email, String password) async {
    return await _remoteSource
        .loginRequest(email: email, password: password)
        .then((loginResponse) {
      return loginResponse;
    }).catchError((error) => throw error);
  }

  @override
  Future<RegisterResponseModel> registerRequest(
      String email, String password) async {
    return await _remoteSource
        .registerRequest(email: email, password: password)
        .then((registerResponse) {
      return registerResponse;
    }).catchError((error) => throw error);
  }

  @override
  Future logoutRequest() async {
    return await _remoteSource.logoutRequest().then((res) {
      return res;
    }).catchError((error) => throw error);
  }

  @override
  Future forgotPassword({required String email}) async {
    return await _remoteSource.forgotPasswordRequest(email: email).then(
      (res) {
        return res;
      },
    ).catchError(
      (error) => throw error,
    );
  }

  @override
  Future resetPassword(
      {required String oldPassword, required String newPassword}) async {
    return await _remoteSource
        .resetPasswordRequest(
      newPassword: newPassword,
      oldPassword: oldPassword,
    )
        .then(
      (res) {
        return res;
      },
    ).catchError(
      (error) => throw error,
    );
  }
}
