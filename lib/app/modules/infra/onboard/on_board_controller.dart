import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../auth/auth_index.dart';

class OnBoardController extends GetxController {
  final _authController = Get.find<AuthController>();

  @override
  void onReady() async {
    super.onReady();

    try {
      _authController.checkLoginStatus();
      if (_authController.isLogged.value) {
        Get.offAllNamed(AppRoutes.MAIN);
      } else {
        Get.toNamed(AppRoutes.SIGN_IN);
      }
    } catch (e) {
      Get.toNamed(AppRoutes.SIGN_IN);
    }

    //await Future.delayed(Duration(milliseconds: 2000));
  }
  // @override
  // void onClose() {}
}
