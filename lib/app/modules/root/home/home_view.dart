import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';

import '/app/core/widgets/widgets_index.dart';
import 'home_controller.dart';
import '/app/modules/root/home/widget/item_github_project.dart';

class HomeView extends BaseView<HomeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'GetX Templates on GitHub',
    );
  }

  @override
  Widget body(BuildContext context) {
    return PagingView(
      pagingController: controller.pagingController,
      onRefresh: () async {
        controller.onRefreshPage();
      },
      onLoadNextPage: () {
        controller.onLoadNextPage();
      },
      child: Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Obx(
          () => ListView.separated(
            shrinkWrap: true,
            itemCount: controller.projectList.length,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var model = controller.projectList[index];

              return ItemGithubProject(dataModel: model);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: AppValues.smallMargin),
          ),
        ),
      ),
    );
  }
}
