import 'package:flutter_getx_template/app/modules/root/post/post_index.dart';
import 'package:get/get.dart';

import '../modules/root/favorite/favorite_binding.dart';
import '../modules/root/favorite/favorite_view.dart';
import '../modules/root/home/home_binding.dart';
import '../modules/root/home/home_view.dart';
import '/app/modules/root/main/bindings/main_binding.dart';
import '/app/modules/root/main/views/main_view.dart';
import '../modules/root/other/other_binding.dart';
import '../modules/root/other/other_view.dart';
import '/app/modules/root/project_details/bindings/project_details_binding.dart';
import '/app/modules/root/project_details/views/project_details_view.dart';
import '../modules/root/settings/settings_binding.dart';
import '../modules/root/settings/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.POST,
      page: () => PostView(),
      binding: PostBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.OTHER,
      page: () => OtherView(),
      binding: OtherBinding(),
    ),
    GetPage(
      name: _Paths.PROJECT_DETAILS,
      page: () => ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),
  ];
}
