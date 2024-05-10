class Project {
  String? projectLink;
  String? sUpdatedAt;
  String? sCreatedAt;
  String? sType;
  String? sRev;
  String? sId;
  String? title;
  String? codeLink;
  String? description;
  List<String>? tags;
  ImgUrl? imgUrl;

  Project(
      {this.projectLink,
      this.sUpdatedAt,
      this.sCreatedAt,
      this.sType,
      this.sRev,
      this.sId,
      this.title,
      this.codeLink,
      this.description,
      this.tags,
      this.imgUrl});

  Project.fromJson(Map<String, dynamic> json) {
    projectLink = json['projectLink'];
    sUpdatedAt = json['_updatedAt'];
    sCreatedAt = json['_createdAt'];
    sType = json['_type'];
    sRev = json['_rev'];
    sId = json['_id'];
    title = json['title'];
    codeLink = json['codeLink'];
    description = json['description'];
    tags = json['tags'].cast<String>();
    imgUrl = json['imgUrl'] != null ? ImgUrl.fromJson(json['imgUrl']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['projectLink'] = projectLink;
    data['_updatedAt'] = sUpdatedAt;
    data['_createdAt'] = sCreatedAt;
    data['_type'] = sType;
    data['_rev'] = sRev;
    data['_id'] = sId;
    data['title'] = title;
    data['codeLink'] = codeLink;
    data['description'] = description;
    data['tags'] = tags;
    if (imgUrl != null) {
      data['imgUrl'] = imgUrl!.toJson();
    }
    return data;
  }
}

class ImgUrl {
  Asset? asset;
  String? sType;

  ImgUrl({this.asset, this.sType});

  ImgUrl.fromJson(Map<String, dynamic> json) {
    asset = json['asset'] != null ? Asset.fromJson(json['asset']) : null;
    sType = json['_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (asset != null) {
      data['asset'] = asset!.toJson();
    }
    data['_type'] = sType;
    return data;
  }
}

class Asset {
  String? sRef;
  String? sType;

  Asset({this.sRef, this.sType});

  Asset.fromJson(Map<String, dynamic> json) {
    sRef = json['_ref'];
    sType = json['_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_ref'] = sRef;
    data['_type'] = sType;
    return data;
  }
}
