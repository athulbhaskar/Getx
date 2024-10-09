import 'dart:convert';

List<FlagResponse> flagResponseFromJson(String str) => List<FlagResponse>.from(json.decode(str).map((x) => FlagResponse.fromJson(x)));

String flagResponseToJson(List<FlagResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FlagResponse {
  String? flagPng;
  String? name;
  String? subregion;

  FlagResponse({
    this.flagPng,
    this.name,
    this.subregion,
  });

  factory FlagResponse.fromJson(Map<String, dynamic> json) => FlagResponse(
    flagPng: json["flagPng"],
    name: json["name"],
    subregion: json["subregion"],
  );

  Map<String, dynamic> toJson() => {
    "flagPNG": flagPng,
    "name": name,
    "subregion": subregion,
  };
}
