import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_getx_template/app/core/utils/flutter/extension.dart';

import '../../../../core/values/app_colors.dart';
import '../../../../core/values/dimens.dart';
import '../../../../core/values/strings.dart';

import '../../../../core/widgets/widgets_index.dart';

import '../auth_controller.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({Key? key}) : super(key: key);

  // ------------ Controller ------------
  final _authController = Get.find<AuthController>();

  // ------------ Input Controller ---------------
  final _oldPasswordCtlr = TextEditingController();
  final _newPasswordCtlr = TextEditingController();

  // ------------ Global Keys ------------
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
                      Strings.resetPasswordLabel,
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
                      PasswordInputField(
                        textEditingController: _oldPasswordCtlr,
                        hintText: Strings.oldPasswordHint,
                      ),
                      SizedBox(height: 20.h),
                      PasswordInputField(
                        textEditingController: _newPasswordCtlr,
                        hintText: Strings.newPasswordHint,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                CustomPrimaryButton(
                  buttonColor: AppColors.darkBlue,
                  textValue: Strings.reset,
                  textColor: AppColors.white,
                  onClick: () {
                    if (_formKey.currentState!.validate()) {
                      _authController.resetPassword(
                        newPassword: _newPasswordCtlr.text,
                        oldPassword: _oldPasswordCtlr.text,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ).fromLTRB(24, 40.0, 24.0, 0),
      ),
    );
  }
}
