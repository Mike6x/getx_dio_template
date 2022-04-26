import 'package:get/get.dart';
import '/app/core/base/base_controller.dart';

import '../../../data/models/github/github_item.dart';
import '../products/github_project_ui_data.dart';
import '/app/data/repository/github/github_repository.dart';

class productDetailsController extends BaseController {
  final GithubRepository _repository =
      Get.find(tag: (GithubRepository).toString());

  final Rx<GithubProjectUiData> _productUiData = GithubProjectUiData().obs;

  GithubProjectUiData get productUiData => _productUiData.value;

  @override
  void onInit() {
    var dataModel = Get.arguments;
    if (dataModel is GithubProjectUiData) {
      getGithubRepository(dataModel.ownerLoginName, dataModel.repositoryName);
    }
    super.onInit();
  }

  void getGithubRepository(userName, repositoryName) {
    callDataService(
      _repository.getProject(userName, repositoryName),
      onSuccess: _handleproductDetailsResponseSuccess,
    );
  }

  void _handleproductDetailsResponseSuccess(GithubItem product) {
    _productUiData(GithubProjectUiData(
      repositoryName: product.name != null ? product.name! : "",
      ownerLoginName: product.owner != null ? product.owner!.login! : "",
      ownerAvatar: product.owner != null ? product.owner!.avatarUrl! : "",
      numberOfStar: product.stargazersCount ?? 0,
      numberOfFork: product.forks ?? 0,
      score: product.score ?? 0.0,
      watchers: product.watchers ?? 0,
      description: product.description ?? "",
    ));
  }
}
