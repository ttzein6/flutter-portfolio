// class ProfileConfig {
//   String? query;
//   Result? result;
//   int? ms;

//   ProfileConfig({this.query, this.result, this.ms});

//   ProfileConfig.fromJson(Map<String, dynamic> json) {
//     query = json['query'];
//     result = json['result'] != null ? Result.fromJson(json['result']) : null;
//     ms = json['ms'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['query'] = query;
//     if (result != null) {
//       data['result'] = result!.toJson();
//     }
//     data['ms'] = ms;
//     return data;
//   }
// }

class ProfileConfig {
  String? sCreatedAt;
  String? sType;
  String? sId;
  ImgUrl? imgUrl;
  String? jobDescription2;
  String? jobDescription1;
  String? sRev;
  String? name;
  String? sUpdatedAt;
  String? cvUrl;
  ProfileConfig(
      {this.sCreatedAt,
      this.cvUrl,
      this.sType,
      this.sId,
      this.imgUrl,
      this.jobDescription2,
      this.jobDescription1,
      this.sRev,
      this.name,
      this.sUpdatedAt});

  ProfileConfig.fromJson(Map<String, dynamic> json) {
    sCreatedAt = json['_createdAt'];
    sType = json['_type'];
    sId = json['_id'];
    imgUrl = json['imgUrl'] != null ? ImgUrl.fromJson(json['imgUrl']) : null;
    jobDescription2 = json['jobDescription2'];
    jobDescription1 = json['jobDescription1'];
    sRev = json['_rev'];
    name = json['name'];
    sUpdatedAt = json['_updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_createdAt'] = sCreatedAt;
    data['_type'] = sType;
    data['_id'] = sId;
    if (imgUrl != null) {
      data['imgUrl'] = imgUrl!.toJson();
    }
    data['jobDescription2'] = jobDescription2;
    data['jobDescription1'] = jobDescription1;
    data['_rev'] = sRev;
    data['name'] = name;
    data['_updatedAt'] = sUpdatedAt;
    return data;
  }
}

class ImgUrl {
  String? sType;
  Asset? asset;
  String? imageUrl;

  ImgUrl({this.sType, this.asset, this.imageUrl});

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
