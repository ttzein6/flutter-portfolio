class Works {
  ImgUrl? imgUrl;
  String? sType;
  String? description;
  String? sRev;
  String? sId;
  String? title;
  String? sUpdatedAt;
  List<String>? tags;
  String? projectLink;
  String? sCreatedAt;
  String? codeLink;

  Works(
      {this.imgUrl,
      this.sType,
      this.description,
      this.sRev,
      this.sId,
      this.title,
      this.sUpdatedAt,
      this.tags,
      this.projectLink,
      this.sCreatedAt,
      this.codeLink});

  Works.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'] != null ? ImgUrl.fromJson(json['imgUrl']) : null;
    sType = json['_type'];
    description = json['description'];
    sRev = json['_rev'];
    sId = json['_id'];
    title = json['title'];
    sUpdatedAt = json['_updatedAt'];
    tags = json['tags'].cast<String>();
    projectLink = json['projectLink'];
    sCreatedAt = json['_createdAt'];
    codeLink = json['codeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (imgUrl != null) {
      data['imgUrl'] = imgUrl!.toJson();
    }
    data['_type'] = sType;
    data['description'] = description;
    data['_rev'] = sRev;
    data['_id'] = sId;
    data['title'] = title;
    data['_updatedAt'] = sUpdatedAt;
    data['tags'] = tags;
    data['projectLink'] = projectLink;
    data['_createdAt'] = sCreatedAt;
    data['codeLink'] = codeLink;
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
