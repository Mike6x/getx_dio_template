import 'package:flutter_getx_template/app/modules/root/post/post_index.dart';
import 'package:get/get.dart';

import '../modules/infra/auth/auth_binding.dart';
import '../modules/infra/auth/forgot_password/forgot_password_page.dart';
import '../modules/infra/auth/reset_password/reset_password_page.dart';
import '../modules/infra/auth/sign_in/index.dart';
import '../modules/infra/auth/sign_up/sign_up_page.dart';

import '../modules/infra/onboard/on_board_index.dart';

import '../modules/root/favorite/favorite_binding.dart';
import '../modules/root/favorite/favorite_view.dart';
import '../modules/root/home/home_binding.dart';
import '../modules/root/home/home_view.dart';
import '../modules/root/root_index.dart';
import '../modules/root/other/other_binding.dart';
import '../modules/root/other/other_view.dart';
import '/app/modules/root/project_details/bindings/project_details_binding.dart';
import '/app/modules/root/project_details/views/project_details_view.dart';
import '../modules/root/settings/settings_binding.dart';
import '../modules/root/settings/settings_view.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.ONBOARD,
      page: () => const OnBoardPage(),
      binding: OnBoardBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => const SignUpPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.FORGOT_PASSWORD,
      page: () => ForgotPasswordPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.RESET_PASSWORD,
      page: () => ResetPasswordPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.ROOT,
      page: () => const RootPage(),
      binding: RootBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.MAIN,
    //   page: () => MainView(),
    //   binding: MainBinding(),
    // ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: AppRoutes.POST,
      page: () => PostView(),
      binding: PostBinding(),
    ),
    GetPage(
      name: AppRoutes.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: AppRoutes.OTHER,
      page: () => OtherView(),
      binding: OtherBinding(),
    ),
    GetPage(
      name: AppRoutes.PROJECT_DETAILS,
      page: () => ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),
  ];
}
