import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

import '../../../core/values/text_styles.dart';
import '/app/core/base/base_view.dart';

import '/app/core/widgets/widgets_index.dart';
import 'home_controller.dart';

class HomeView extends BaseView<HomeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'DASHBOARD',
    );
  }

    @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'DasboardView is working',
        style: titleStyle,
      ),
    );
  }
}
