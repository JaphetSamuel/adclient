class User {
  String? nom;
  String? prenom;

  User({this.nom, this.prenom});

  User.fromJson(Map<String, dynamic> json) {
    nom = json['nom'];
    prenom = json['prenom'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nom'] = nom;
    data['prenom'] = prenom;
    return data;
  }
}
