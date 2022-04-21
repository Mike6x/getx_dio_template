import 'github_item.dart';

class GithubProjectSearchResponse {
  
  int? totalCount;
  bool? incompleteResults;
  List<GithubItem>? items;

  GithubProjectSearchResponse({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  GithubProjectSearchResponse.fromJson(dynamic json) {
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(GithubItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = totalCount;
    map['incomplete_results'] = incompleteResults;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }

    return map;
  }
}
