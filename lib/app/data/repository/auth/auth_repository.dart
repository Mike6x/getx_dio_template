
import '../../models/auth/auth_models_index.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> loginRequest(String email, String password);

  Future<RegisterResponseModel> registerRequest(String email, String password);

  Future logoutRequest();

  Future forgotPassword({required String email});

  Future resetPassword({required String oldPassword, required String newPassword});
}
