import 'package:get/get.dart';

import '../../core/base/paging_controller.dart';

import '../../core/models/models_index.dart';

import '../../data/models/posts/post_search_response.dart';
import '../../data/repository/posts/post_repository.dart';
import '/app/core/base/base_controller.dart';
import 'post_index.dart';

class PostController extends BaseController {
  final PostRepository _postRepository =
      Get.find(tag: (PostRepository).toString());

//PostsUiData = Post
  final RxList<PostUiData> _postListController = RxList.empty();

  List<PostUiData> get postList => _postListController.toList();

  final pagingController = PagingController<PostUiData>();

  void getPostList() {
    var queryParam = SearchQueryParam(
      searchKeyWord: 'e',
      pageNumber: pagingController.pageNumber,
    );

    var portSearchService = _postRepository.searchPosts(queryParam);

    callDataService(
      portSearchService,
      onStart: pagingController.isInitialLoad ? null : () {},
      onSuccess: _handlePostListResponseSuccess,
    );
  }

  onRefreshPage() {
    getPostList();
  }

  onLoadNextPage() {
    getPostList();
  }

  void _handlePostListResponseSuccess(PostSearchResponse response) {
    List<PostUiData>? repoList = response.items
        ?.map((e) => PostUiData(
              userId: e.userId ?? 0,
              id: e.id ?? 0,
              title: e.title != null ? e.title! : "Null",
              body: e.body ?? "",
        ))
        .toList();

    pagingController.appendData(repoList ?? []);

    _postListController([...pagingController.listItems]);
  }

  @override
  void onInit() {
    getPostList();
    super.onInit();
  }

  @override
  void onClose() {
    _postListController.close();
    super.onClose();
  }
}
