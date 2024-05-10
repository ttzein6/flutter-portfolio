class Experiences {
  List<Works>? works;
  String? year;
  String? sCreatedAt;
  String? sRev;
  String? sType;
  String? sId;
  String? sUpdatedAt;

  Experiences(
      {this.works,
      this.year,
      this.sCreatedAt,
      this.sRev,
      this.sType,
      this.sId,
      this.sUpdatedAt});

  Experiences.fromJson(Map<String, dynamic> json) {
    if (json['works'] != null) {
      works = <Works>[];
      json['works'].forEach((v) {
        works!.add(Works.fromJson(v));
      });
    }
    year = json['year'];
    sCreatedAt = json['_createdAt'];
    sRev = json['_rev'];
    sType = json['_type'];
    sId = json['_id'];
    sUpdatedAt = json['_updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (works != null) {
      data['works'] = works!.map((v) => v.toJson()).toList();
    }
    data['year'] = year;
    data['_createdAt'] = sCreatedAt;
    data['_rev'] = sRev;
    data['_type'] = sType;
    data['_id'] = sId;
    data['_updatedAt'] = sUpdatedAt;
    return data;
  }
}

class Works {
  String? sKey;
  String? desc;
  String? sType;
  String? name;
  String? company;

  Works({this.sKey, this.desc, this.sType, this.name, this.company});

  Works.fromJson(Map<String, dynamic> json) {
    sKey = json['_key'];
    desc = json['desc'];
    sType = json['_type'];
    name = json['name'];
    company = json['company'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_key'] = sKey;
    data['desc'] = desc;
    data['_type'] = sType;
    data['name'] = name;
    data['company'] = company;
    return data;
  }
}
