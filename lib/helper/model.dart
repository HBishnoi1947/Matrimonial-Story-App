class MyModel {
  int? totalPages;
  int? totalCount;
  int? pageNumber;
  List<Items>? items;

  MyModel({this.totalPages, this.totalCount, this.pageNumber, this.items});

  MyModel.fromJson(Map<String, dynamic> json) {
    totalPages = json['TotalPages'];
    totalCount = json['TotalCount'];
    pageNumber = json['PageNumber'];
    if (json['Items'] != null) {
      items = <Items>[];
      json['Items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TotalPages'] = this.totalPages;
    data['TotalCount'] = this.totalCount;
    data['PageNumber'] = this.pageNumber;
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? storyId;
  String? couplePhotoImageUrl;
  String? coupleName;
  String? story;

  Items({this.storyId, this.couplePhotoImageUrl, this.coupleName, this.story});

  Items.fromJson(Map<String, dynamic> json) {
    storyId = json['StoryId'];
    couplePhotoImageUrl = json['CouplePhotoImageUrl'];
    coupleName = json['CoupleName'];
    story = json['Story'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StoryId'] = this.storyId;
    data['CouplePhotoImageUrl'] = this.couplePhotoImageUrl;
    data['CoupleName'] = this.coupleName;
    data['Story'] = this.story;
    return data;
  }
}