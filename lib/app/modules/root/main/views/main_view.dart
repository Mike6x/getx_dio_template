import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/modules/root/post/post_index.dart';
import '/app/core/base/base_view.dart';
import '../../favorite/favorite_view.dart';
import '../../home/home_view.dart';
import '/app/modules/root/main/controllers/main_controller.dart';
import '/app/modules/root/main/model/menu_code.dart';
import '/app/modules/root/main/views/bottom_nav_bar.dart';
import '../../other/other_view.dart';
import '../../settings/settings_view.dart';

// ignore: must_be_immutable
class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      child: Obx(() => getPageOnSelectedMenu(controller.selectedMenuCode)),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(onNewMenuSelected: controller.onMenuSelected);
  }

  final HomeView homeView = HomeView();
  FavoriteView? favoriteView;
  PostView? postView;
  SettingsView? settingsView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return homeView;
      case MenuCode.FAVORITE:
        favoriteView ??= FavoriteView();
        return favoriteView!;
      case MenuCode.POST:
        postView ??= PostView();
        return postView!;
      case MenuCode.SETTINGS:
        settingsView ??= SettingsView();
        return settingsView!;
      default:
        return OtherView(
          viewParam: describeEnum(menuCode),
        );
    }
  }
}
