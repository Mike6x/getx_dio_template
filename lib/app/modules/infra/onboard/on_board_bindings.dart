import 'package:get/get.dart';

import '../auth/auth_index.dart';
import 'on_board_controller.dart';

class OnBoardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardController>(() => OnBoardController());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
