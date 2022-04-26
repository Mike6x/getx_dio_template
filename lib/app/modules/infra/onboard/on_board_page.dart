import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/asset_path.dart';


class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: Colors.white,
              child: Image.asset(
                logo_image,
                width: Get.width * 0.5,
              ))),
    );
  }
}



// class OnBoard extends StatelessWidget {
//   const OnBoard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final _authController = Get.find<AuthController>();

//     return Obx(() {
//       if (!_authController.isLogged.value) {
//         return const SignInPage();
//       } else {
//         return HomeView();
//         //return const HomePage();
//       }
//     });
//   }
// }
