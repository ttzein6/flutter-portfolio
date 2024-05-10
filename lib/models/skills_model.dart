class Skills {
  String? bgColor;
  String? sCreatedAt;
  String? sRev;
  String? sType;
  Icon? icon;
  String? name;
  String? sId;
  String? sUpdatedAt;

  Skills(
      {this.bgColor,
      this.sCreatedAt,
      this.sRev,
      this.sType,
      this.icon,
      this.name,
      this.sId,
      this.sUpdatedAt});

  Skills.fromJson(Map<String, dynamic> json) {
    bgColor = json['bgColor'];
    sCreatedAt = json['_createdAt'];
    sRev = json['_rev'];
    sType = json['_type'];
    icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
    name = json['name'];
    sId = json['_id'];
    sUpdatedAt = json['_updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bgColor'] = bgColor;
    data['_createdAt'] = sCreatedAt;
    data['_rev'] = sRev;
    data['_type'] = sType;
    if (icon != null) {
      data['icon'] = icon!.toJson();
    }
    data['name'] = name;
    data['_id'] = sId;
    data['_updatedAt'] = sUpdatedAt;
    return data;
  }
}

class Icon {
  String? sType;
  Asset? asset;

  Icon({this.sType, this.asset});

  Icon.fromJson(Map<String, dynamic> json) {
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
