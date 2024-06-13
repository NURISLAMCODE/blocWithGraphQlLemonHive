class GrapQlModel {
  Data? data;

  GrapQlModel({this.data});

  GrapQlModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Characters? characters;

  Data({this.characters});

  Data.fromJson(Map<String, dynamic> json) {
    characters = json['characters'] != null
        ? new Characters.fromJson(json['characters'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.characters != null) {
      data['characters'] = this.characters!.toJson();
    }
    return data;
  }
}

class Characters {
  Info? info;
  List<Results>? results;

  Characters({this.info, this.results});

  Characters.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  int? count;

  Info({this.count});

  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    return data;
  }
}

class Results {
  String? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;
  String? created;
  Location? location;
  List<Episode>? episode;

  Results(
      {this.id,
        this.name,
        this.status,
        this.species,
        this.type,
        this.gender,
        this.image,
        this.created,
        this.location,
        this.episode});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    image = json['image'];
    created = json['created'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    if (json['episode'] != null) {
      episode = <Episode>[];
      json['episode'].forEach((v) {
        episode!.add(new Episode.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['status'] = this.status;
    data['species'] = this.species;
    data['type'] = this.type;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['created'] = this.created;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.episode != null) {
      data['episode'] = this.episode!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Location {
  String? name;
  String? id;
  String? dimension;
  String? created;

  Location({this.name, this.id, this.dimension, this.created});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    dimension = json['dimension'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['dimension'] = this.dimension;
    data['created'] = this.created;
    return data;
  }
}

class Episode {
  String? name;
  String? id;
  String? airDate;

  Episode({this.name, this.id, this.airDate});

  Episode.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    airDate = json['air_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['air_date'] = this.airDate;
    return data;
  }
}
