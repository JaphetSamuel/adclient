class Notifications {
  int? id;
  String? titre;
  Details? details;
  String? date;
  String? type;

  Notifications({this.id, this.titre, this.details, this.date, this.type});

  Notifications.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titre = json['titre'];
    details =
        json['details'] != null ? Details?.fromJson(json['details']) : null;
    date = json['date'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['titre'] = titre;
    if (details != null) {
      data['details'] = details?.toJson();
    }
    data['date'] = date;
    data['type'] = type;
    return data;
  }
}

class Details {
  String? s1;
  String? s2;

  Details({this.s1, this.s2});

  Details.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['1'] = s1;
    data['2'] = s2;
    return data;
  }

  @override
  String toString() {
    return '$s1 $s2';
  }
}
