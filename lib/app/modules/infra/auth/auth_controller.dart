import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_template/app/data/encryption/mcrypt_base_64.dart';
import 'package:get/get.dart';

import '../../../data/local/preference/preference_index.dart';
import '../../../data/repository/auth/auth_repository.dart';

class AuthController extends GetxController {
  // ------------- Variables -------------
  final isLogged = false.obs;

  // ----------------- Locators -----------------
  //final sharedPrefHelper = Get.find<SharedPreferenceHelper>();
  final AuthRepository authRepository =
      Get.find(tag: (AuthRepository).toString());
  final PreferenceManager _preferenceManager =
      Get.find(tag: (PreferenceManager).toString());

  // ----------------- Methods -----------------
  Future<void> logOut() async {
    await authRepository.logoutRequest();
    isLogged.value = false;
    await _preferenceManager.clear();
  }

  Future<void> login(String email, String password) async {
    // Encrypting password before sending to server to avoid sending plain text password to server
    final encryptedPassword = MCryptBase64.encrypt(password);

    // Making login request to server with encrypted password and email
    final loginResponse = await authRepository
        .loginRequest(email, encryptedPassword)
        .catchError((error) {
      debugPrint("AuthController Login Error: $error");
    });

    // Checking if the login request was successful or not and saving the TOKEN in shared preferences and also updating the isLogged value in the UI
    if (loginResponse.token != null) {
      isLogged.value = true;
      await _preferenceManager.setString(
          Preferences.authToken, loginResponse.token!);
      await _preferenceManager.setBool(Preferences.isLoggedIn, isLogged.value);
    }
  }

  Future<void> register(String email, String password) async {
    // Making register request to server with encrypted password and email
    final registerResponse = await authRepository
        .registerRequest(email, password)
        .catchError((error) {
      debugPrint("AuthController Register Error: $error");
    });

    // Checking if the register request was successful or not and saving the TOKEN in shared preferences and also updating the isLogged value in the UI
    if (registerResponse.token != null) {
      isLogged.value = true;
      await _preferenceManager.setString(
          Preferences.authToken, registerResponse.token!);
      await _preferenceManager.setBool(Preferences.isLoggedIn, isLogged.value);
    }
  }

  // Forgot password
  void forgotPassword({required String email}) async {
    final res = await authRepository.forgotPassword(email: email);
  }

  // Reset password
  void resetPassword(
      {required String oldPassword, required String newPassword}) async {
    final res = await authRepository.resetPassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }

  Future<void> checkLoginStatus() async {
    final String? token =
        await _preferenceManager.getString(Preferences.authToken);
    if (token != null) {
      isLogged.value = true;
    }
  }

  // ----------------- Lifecycle -----------------
  @override
  void onInit() {
    checkLoginStatus();
    super.onInit();
  }
}
