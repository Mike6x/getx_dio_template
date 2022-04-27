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

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // ----------------- Controller -----------------
  final _authController = Get.find<AuthController>();

  // ----------------- Global Keys -----------------
  final _signUpFormKey = GlobalKey<FormState>();

  // ----------------- Input Fields -----------------
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  // ----------------- Variables -----------------
  bool passwordVisible = false;

  // ----------------- Methods -----------------
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void registerRequested() async {
    if (_signUpFormKey.currentState!.validate()) {
      if (passwordController.text == passwordConfirmationController.text) {
        // await _authController.register(emailController.text, passwordController.text).then((value) {
        //   Get.offAllNamed(Routes.HOME);
        // });
        Get.offAllNamed(AppRoutes.HOME);
      } else {
        CustomSnackBar.openErrorSnackBar(
            context: context, errorText: Strings.passwordNotMatch);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: Center(
          child: SafeArea(
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints(maxWidth: Dimens.mobileScreenSize),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.registerHeading,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(height: 20.h),
                        const Divider()
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Form(
                      key: _signUpFormKey,
                      child: Column(
                        children: [
                          EmailTextField(inputController: emailController),
                          SizedBox(height: 14.h),
                          PasswordInputField(
                            textEditingController: passwordController,
                          ),
                         SizedBox(height: 14.h),
                          PasswordInputField(
                            hintText: Strings.passwordConfirmationHint,
                            textEditingController:
                                passwordConfirmationController,
                            errorText: Strings.confirmPassword,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 48.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CustomCheckbox(),
                        SizedBox(height: 12.h),
                        Flexible(
                          child: Text(Strings.termsandcond,
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    CustomPrimaryButton(
                      buttonColor: AppColors.darkBlue,
                      textValue: Strings.registerLabel,
                      textColor: Colors.white,
                      onClick: registerRequested,
                    ),
                    SizedBox(height: 50.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Strings.alreadyHaveAnAccount,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: AppColors.grey),
                        ),
                        Text(
                          Strings.loginLabel,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: AppColors.darkBlue),
                        ).onTap(() {
                          Get.toNamed(AppRoutes.SIGN_IN);
                          //Navigator.pushNamed(context, '/login');
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ).fromLTRB(24, 40.0, 24.0, 0),
          ),
        ),
      ),
    );
  }
}
