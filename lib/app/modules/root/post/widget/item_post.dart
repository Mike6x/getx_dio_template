import 'package:flutter/material.dart';
import '/app/core/widgets/widgets_index.dart';
import 'package:get/get.dart';

import '../post_index.dart';
import '/app/core/base/base_widget_mixin.dart';
import '/app/core/values/app_values.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widgets/elevated_container.dart';
import '/app/routes/app_pages.dart';

class ItemPost extends StatelessWidget with BaseWidgetMixin {
  final PostUiData dataModel;

  ItemPost({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return ElevatedContainer(
      child: Ripple(
        onTap: _onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppValues.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   backgroundImage: NetworkImage(dataModel.ownerAvatar),
              //   radius: AppValues.circularImageSize_30,
              // ),
              const SizedBox(width: AppValues.margin_10),
              _getDetailsView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDetailsView() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataModel.title,
            style: cardTitleStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const SizedBox(height: AppValues.margin_4),
          Text(
            dataModel.body,
            style: cardSubtitleStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppValues.margin_4),
          //_getForkStarWatcherView(),
        ],
      ),
    );
  }

  // Widget _getForkStarWatcherView() {
  //   return Row(
  //     children: [
  //       IconTextWidget(
  //         fileName: "ic_fork.svg",
  //         value: dataModel.numberOfFork.toString(),
  //         height: AppValues.iconSize_20,
  //         width: AppValues.iconSize_20,
  //         color: AppColors.iconColorDefault,
  //       ),
  //       IconTextWidget(
  //         icon: Icons.star_border,
  //         value: dataModel.numberOfStar.toString(),
  //         size: AppValues.iconSize_20,
  //         color: AppColors.iconColorDefault,
  //       ),
  //       IconTextWidget(
  //         icon: Icons.visibility_outlined,
  //         value: dataModel.watchers.toString(),
  //         size: AppValues.iconSize_20,
  //         color: AppColors.iconColorDefault,
  //       ),
  //     ],
  //   );
  // }

  void _onTap() {
    Get.toNamed(Routes.PROJECT_DETAILS, arguments: dataModel);
  }
}
