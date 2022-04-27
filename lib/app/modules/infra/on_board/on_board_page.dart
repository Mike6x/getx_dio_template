import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/root/root_page.dart';
import 'package:get/get.dart';
import '../auth/auth_index.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Obx(() {
      if (!_authController.isLogged.value) {
        //Get.offAllNamed(AppRoutes.ROOT);
        return const RootPage();
      } 
      //else {
        //Get.toNamed(AppRoutes.SIGN_IN);
        return const SignInPage();
     // }
    });
  }

    // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //         child: Container(
  //             color: Colors.white,
  //             child: Image.asset(
  //               logo_image,
  //               width: Get.width * 0.5,
  //             ))),
  //   );
  // }
}
