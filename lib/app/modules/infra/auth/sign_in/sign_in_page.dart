import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_getx_template/app/core/utils/flutter/extension.dart';

import '../../../../core/values/app_colors.dart';
import '../../../../core/values/dimens.dart';
import '../../../../core/values/strings.dart';

import '../../../../core/widgets/widgets_index.dart';

import '../../../../routes/app_routes.dart';
import '../auth_controller.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _signInPageState createState() => _signInPageState();
}

class _signInPageState extends State<SignInPage> {
  // --------------------- Controller ---------------------
  final _authController = Get.find<AuthController>();

  // --------------------- Global Keys ---------------------
  final _signInFormKey = GlobalKey<FormState>();

  // --------------------- Input Fields ---------------------
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // --------------------- Variables ---------------------
  bool passwordVisible = false;

  // --------------------- Functions ---------------------
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void _signInRequested() async {
    if (_signInFormKey.currentState!.validate()) {
      // await _authController
      //     .login(emailController.text, passwordController.text)
      //     .then((value) {
      //   Get.offAllNamed(Routes.HOME);
      // });
      Get.offAllNamed(AppRoutes.HOME);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: Dimens.mobileScreenSize,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.loginHeading,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(height: 20.h),
                      const Divider()
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        EmailTextField(
                          inputController: emailController,
                        ),
                        SizedBox(height: 14.h),
                        PasswordInputField(
                          textEditingController: passwordController,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomCheckbox(),
                      SizedBox(height: 12.h),
                      Text(Strings.rememberMe,
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  CustomPrimaryButton(
                    buttonColor: AppColors.darkBlue,
                    textValue: Strings.loginLabel,
                    textColor: Colors.white,
                    onClick: () {
                      _signInRequested();
                    },
                  ),
                  SizedBox(height: 24.h),
                  Center(
                    child: Text(
                      'OR',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: AppColors.grey),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  // Google Sign In
                  CustomPrimaryButton(
                    buttonColor: AppColors.lightGrey,
                    textValue: Strings.loginWithGoogle,
                    textColor: AppColors.black,
                    onClick: () {},
                  ),
                  SizedBox(height: 50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.dontHaveAccount,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.grey),
                      ),
                      Text(
                        Strings.registerLabel,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.darkBlue),
                      ).onTap(() {
                        Navigator.pushNamed(context, '/register');
                      }),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgot-password');
                    },
                    child: Text(
                      Strings.forgotPassword,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: AppColors.darkBlue, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
          ).fromLTRB(24, 40.0, 24.0, 0),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../auth_controller.dart';


// class SignInPage extends GetView<AuthController> {
//   const SignInPage({Key? key}) : super(key: key);

//   Widget _buildView() {
//     return const Center(
//       child: Text("SigninPage"),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AuthController>(
//       init: AuthController(),
//       id: "signin",
//       builder: (_) {
//         return Scaffold(
//           appBar: AppBar(title: const Text("signin")),
//           body: SafeArea(
//             child: _buildView(),
//           ),
//         );
//       },
//     );
//   }
// }
