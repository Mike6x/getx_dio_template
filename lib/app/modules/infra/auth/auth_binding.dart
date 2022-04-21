import 'package:get/get.dart';

import 'auth_index.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());

    // Get.lazyPut<AuthController>(
    //     () => AuthController(apiRepository: Get.find()));
  }
}
