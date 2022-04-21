

import '../../models/auth/auth_models_index.dart';

abstract class AuthApi {
  Future<LoginResponseModel> loginRequest(
      {required String email, required String password});

  Future<RegisterResponseModel> registerRequest(
      {required String email, required String password});

  Future logoutRequest();

  Future forgotPasswordRequest({required String email});

  Future<dynamic> resetPasswordRequest(
      {required String oldPassword, required String newPassword});
}
