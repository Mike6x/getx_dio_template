import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/root/other/other_view.dart';
import 'package:get/get.dart';

import 'favorite/favorite_view.dart';
import 'home/home_view.dart';
import 'post/post_view.dart';

import 'products/products_view.dart';
import 'root_controller.dart';
import 'settings/settings_view.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  // final LoginController loginController =
  //     Get.put(LoginController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      builder: (controller) {
        return Scaffold(
          //drawer: leftNavi(loginController.myUser.value.name.toString()),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                ProductsView(),
                PostView(),
                FavoriteView(),
                SettingsView(),
                OtherView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home',
              ),
                        _bottomNavigationBarItem(
                icon: CupertinoIcons.book,
                label: 'Products',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.book,
                label: 'Post',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.bell,
                label: 'Favorite',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'settings',
              ),
              _bottomNavigationBarItem(
                icon: Icons.menu,
                label: 'Other',
              ),
            ],
          ),
        );
      },
    );
  }

//  _bottomNavigationBarItem({IconData icon, String label}) {
  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
