// To parse this JSON data, do
//
//     final movieVideoModel = movieVideoModelFromJson(jsonString);

import 'dart:convert';

MovieVideoModel movieVideoModelFromJson(String str) =>
    MovieVideoModel.fromJson(json.decode(str));

String movieVideoModelToJson(MovieVideoModel data) =>
    json.encode(data.toJson());

class MovieVideoModel {
  MovieVideoModel({
    this.id,
    this.videoResults,
  });

  int? id;
  List<VideoResult>? videoResults;

  factory MovieVideoModel.fromJson(Map<String, dynamic> json) =>
      MovieVideoModel(
        id: json["id"],
        videoResults: List<VideoResult>.from(
            json["results"].map((x) => VideoResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "results": List<dynamic>.from(videoResults!.map((x) => x.toJson())),
      };
}

class VideoResult {
  VideoResult({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  Iso6391? iso6391;
  Iso31661? iso31661;
  String? name;
  String? key;
  Site? site;
  int? size;
  Type? type;
  bool? official;
  DateTime? publishedAt;
  String? id;

  factory VideoResult.fromJson(Map<String, dynamic> json) => VideoResult(
        iso6391: iso6391Values.map![json["iso_639_1"]],
        iso31661: iso31661Values.map![json["iso_3166_1"]],
        name: json["name"],
        key: json["key"],
        site: siteValues.map![json["site"]],
        size: json["size"],
        type: typeValues.map![json["type"]],
        official: json["official"],
        publishedAt: DateTime.parse(json["published_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "iso_639_1": iso6391Values.reverse![iso6391],
        "iso_3166_1": iso31661Values.reverse![iso31661],
        "name": name,
        "key": key,
        "site": siteValues.reverse![site],
        "size": size,
        "type": typeValues.reverse![type],
        "official": official,
        "published_at": publishedAt!.toIso8601String(),
        "id": id,
      };
}

enum Iso31661 { US }

final iso31661Values = EnumValues({"US": Iso31661.US});

enum Iso6391 { EN }

final iso6391Values = EnumValues({"en": Iso6391.EN});

enum Site { YOU_TUBE }

final siteValues = EnumValues({"YouTube": Site.YOU_TUBE});

enum Type { TEASER, CLIP, TRAILER, FEATURETTE, BEHIND_THE_SCENES, BLOOPERS }

final typeValues = EnumValues({
  "Behind the Scenes": Type.BEHIND_THE_SCENES,
  "Bloopers": Type.BLOOPERS,
  "Clip": Type.CLIP,
  "Featurette": Type.FEATURETTE,
  "Teaser": Type.TEASER,
  "Trailer": Type.TRAILER
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
