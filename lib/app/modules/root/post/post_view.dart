import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/app_values.dart';
import '/app/core/widgets/widgets_index.dart';
import '/app/core/base/base_view.dart';

import 'post_controller.dart';
import 'widget/item_post.dart';

class PostView extends BaseView<PostController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'POST',
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
            itemCount: controller.postList.length,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              var model = controller.postList[index];

              return ItemPost(dataModel: model);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: AppValues.smallMargin),
          ),
        ),
      ),
    );
  }
}
