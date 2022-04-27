import 'package:get/get.dart';


import 'favorite/favorite_controller.dart';
import 'home/home_controller.dart';
import 'other/other_controller.dart';
import 'post/post_index.dart';
import 'products/products_controller.dart';
import 'root_controller.dart';


class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<ProductsController>(() => ProductsController(), fenix: true);
    Get.lazyPut<PostController>(() => PostController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
    // Get.lazyPut<SettingsController>(() => SettingsController());
    Get.lazyPut<OtherController>(() => OtherController(), fenix: true);
  }
}
