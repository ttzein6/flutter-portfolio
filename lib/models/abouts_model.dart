class Abouts {
  ImgUrl? imgUrl;
  String? sCreatedAt;
  String? sRev;
  String? sType;
  String? sId;
  String? title;
  String? sUpdatedAt;

  Abouts(
      {this.imgUrl,
      this.sCreatedAt,
      this.sRev,
      this.sType,
      this.sId,
      this.title,
      this.sUpdatedAt});

  Abouts.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'] != null ? ImgUrl.fromJson(json['imgUrl']) : null;
    sCreatedAt = json['_createdAt'];
    sRev = json['_rev'];
    sType = json['_type'];
    sId = json['_id'];
    title = json['title'];
    sUpdatedAt = json['_updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (imgUrl != null) {
      data['imgUrl'] = imgUrl!.toJson();
    }
    data['_createdAt'] = sCreatedAt;
    data['_rev'] = sRev;
    data['_type'] = sType;
    data['_id'] = sId;
    data['title'] = title;
    data['_updatedAt'] = sUpdatedAt;
    return data;
  }
}

class ImgUrl {
  String? sType;
  Asset? asset;

  ImgUrl({this.sType, this.asset});

  ImgUrl.fromJson(Map<String, dynamic> json) {
    sType = json['_type'];
    asset = json['asset'] != null ? Asset.fromJson(json['asset']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_type'] = sType;
    if (asset != null) {
      data['asset'] = asset!.toJson();
    }
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
