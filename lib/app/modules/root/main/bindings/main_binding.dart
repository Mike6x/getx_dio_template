import 'package:get/get.dart';

import '../../post/post_controller.dart';
import '../../favorite/favorite_controller.dart';
import '../../home/home_controller.dart';
import '/app/modules/root/main/controllers/main_controller.dart';
import '../../other/other_controller.dart';
import '../../settings/settings_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    Get.lazyPut<OtherController>(
      () => OtherController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
    Get.lazyPut<PostController>(
      () => PostController(),
    );
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
