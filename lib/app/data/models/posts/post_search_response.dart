import 'post_item.dart';

class PostSearchResponse {
  // int? totalCount;
  // bool? incompleteResults;
  List<PostItem>? items;

  PostSearchResponse({
    // this.totalCount,
    // this.incompleteResults,
    this.items,
  });

  // PostSearchResponse.fromJson(Map<String, dynamic> json) {
  //   // totalCount = json['total_count'] ;
  //   // incompleteResults = json['incomplete_results'] ;
  //   if (json['items'] != null) {
  //     items = [];
  //     json['items'].forEach((v) {
  //       items?.add(PostItem.fromJson(v));
  //     });
  //   }
  // }

  factory PostSearchResponse.fromJson(List<dynamic> parsedJson) {
    List<PostItem> items = <PostItem>[];
    items = parsedJson.map((i) => PostItem.fromJson(i)).toList();

    return PostSearchResponse(
      items: items,
    );
  }

  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   // map['total_count'] = totalCount;
  //   // map['incomplete_results'] = incompleteResults;
  //   if (items != null) {
  //     map['items'] = items?.map((v) => v.toJson()).toList();
  //   }

  //   return map;
  // }
}
