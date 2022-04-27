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

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  // ------------ Controller ------------
  final _authController = Get.find<AuthController>();

  // ------------ Input Controller ---------------
  final _forgotPasswordController = TextEditingController();

  // ------------ Global Keys -----------------
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
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
                      Strings.forgotPasswordLabel,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 20.h),
                    const Divider()
                  ],
                ),
                SizedBox(height: 10.h),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        inputController: _forgotPasswordController,
                        hintText: "Enter you email id",
                        errorText: "Please enter your email id",
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                CustomPrimaryButton(
                  buttonColor: AppColors.darkBlue,
                  textValue: "Submit",
                  textColor: AppColors.white,
                  onClick: () {
                    if (_formKey.currentState!.validate()) {
                      _authController.forgotPassword(
                        email: _forgotPasswordController.text,
                      );
                    }
                  },
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
                      //Navigator.pushNamed(context, '/login');
                      Get.toNamed(AppRoutes.SIGN_IN);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ).fromLTRB(24, 40.0, 24.0, 0),
    );
  }
}
