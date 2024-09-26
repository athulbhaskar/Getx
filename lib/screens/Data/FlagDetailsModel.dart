import 'dart:convert';

List<FlagResponse> flagResponseFromJson(String str) => List<FlagResponse>.from(
    json.decode(str).map((x) => FlagResponse.fromJson(x)));

String flagResponseToJson(List<FlagResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FlagResponse {
  String? alpha2Code;
  String? alpha3Code;
  List<String>? altSpellings;
  double? area;
  List<String>? borders;
  List<String>? callingCodes;
  String? capital;
  List<Currency>? currencies;
  String? demonym;
  String? flagPng;
  double? gini;
  List<Language>? languages;
  List<double>? latlng;
  String? name;
  String? nativeName;
  String? numericCode;
  int? population;
  Region? region;
  List<RegionalBloc>? regionalBlocs;
  String? subregion;
  List<String>? timezones;
  List<String>? topLevelDomain;
  Translations? translations;
  String? cioc;
  String? flag;

  String? status;
  String? message;

  FlagResponse({
    this.alpha2Code,
    this.alpha3Code,
    this.altSpellings,
    this.area,
    this.borders,
    this.callingCodes,
    this.capital,
    this.currencies,
    this.demonym,
    this.flagPng,
    this.gini,
    this.languages,
    this.latlng,
    this.name,
    this.nativeName,
    this.numericCode,
    this.population,
    this.region,
    this.regionalBlocs,
    this.subregion,
    this.timezones,
    this.topLevelDomain,
    this.translations,
    this.cioc,
    this.flag,
    this.status,
    this.message
  });

  factory FlagResponse.fromJson(Map<String, dynamic> json) => FlagResponse(
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        altSpellings: json["altSpellings"] == null
            ? []
            : List<String>.from(json["altSpellings"]!.map((x) => x)),
        area: json["area"]?.toDouble(),
        borders: json["borders"] == null
            ? []
            : List<String>.from(json["borders"]!.map((x) => x)),
        callingCodes: json["callingCodes"] == null
            ? []
            : List<String>.from(json["callingCodes"]!.map((x) => x)),
        capital: json["capital"],
        currencies: json["currencies"] == null
            ? []
            : List<Currency>.from(
                json["currencies"]!.map((x) => Currency.fromJson(x))),
        demonym: json["demonym"],
        flagPng: json["flagPNG"],
        gini: json["gini"]?.toDouble(),
        languages: json["languages"] == null
            ? []
            : List<Language>.from(
                json["languages"]!.map((x) => Language.fromJson(x))),
        latlng: json["latlng"] == null
            ? []
            : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
        name: json["name"],
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        population: json["population"],
        region: regionValues.map[json["region"]]!,
        regionalBlocs: json["regionalBlocs"] == null
            ? []
            : List<RegionalBloc>.from(
                json["regionalBlocs"]!.map((x) => RegionalBloc.fromJson(x))),
        subregion: json["subregion"],
        timezones: json["timezones"] == null
            ? []
            : List<String>.from(json["timezones"]!.map((x) => x)),
        topLevelDomain: json["topLevelDomain"] == null
            ? []
            : List<String>.from(json["topLevelDomain"]!.map((x) => x)),
        translations: json["translations"] == null
            ? null
            : Translations.fromJson(json["translations"]),
        cioc: json["cioc"],
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "altSpellings": altSpellings == null
            ? []
            : List<dynamic>.from(altSpellings!.map((x) => x)),
        "area": area,
        "borders":
            borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "callingCodes": callingCodes == null
            ? []
            : List<dynamic>.from(callingCodes!.map((x) => x)),
        "capital": capital,
        "currencies": currencies == null
            ? []
            : List<dynamic>.from(currencies!.map((x) => x.toJson())),
        "demonym": demonym,
        "flagPNG": flagPng,
        "gini": gini,
        "languages": languages == null
            ? []
            : List<dynamic>.from(languages!.map((x) => x.toJson())),
        "latlng":
            latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
        "name": name,
        "nativeName": nativeName,
        "numericCode": numericCode,
        "population": population,
        "region": regionValues.reverse[region],
        "regionalBlocs": regionalBlocs == null
            ? []
            : List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
        "subregion": subregion,
        "timezones": timezones == null
            ? []
            : List<dynamic>.from(timezones!.map((x) => x)),
        "topLevelDomain": topLevelDomain == null
            ? []
            : List<dynamic>.from(topLevelDomain!.map((x) => x)),
        "translations": translations?.toJson(),
        "cioc": cioc,
        "flag": flag,
         "status":status,
         "message":message
      };
  FlagResponse.withError(String errorValue, String errorMessage)
      : status = errorValue,
        message = errorMessage;
}

class Currency {
  String? code;
  String? name;
  String? symbol;

  Currency({
    this.code,
    this.name,
    this.symbol,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
      };
}

class Language {
  String? iso6391;
  String? iso6392;
  String? name;
  String? nativeName;

  Language({
    this.iso6391,
    this.iso6392,
    this.name,
    this.nativeName,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        iso6391: json["iso639_1"],
        iso6392: json["iso639_2"],
        name: json["name"],
        nativeName: json["nativeName"],
      );

  Map<String, dynamic> toJson() => {
        "iso639_1": iso6391,
        "iso639_2": iso6392,
        "name": name,
        "nativeName": nativeName,
      };
}

enum Region { AFRICA, AMERICAS, ASIA, EMPTY, EUROPE, OCEANIA, POLAR }

final regionValues = EnumValues({
  "Africa": Region.AFRICA,
  "Americas": Region.AMERICAS,
  "Asia": Region.ASIA,
  "": Region.EMPTY,
  "Europe": Region.EUROPE,
  "Oceania": Region.OCEANIA,
  "Polar": Region.POLAR
});

class RegionalBloc {
  Acronym? acronym;
  Name? name;
  List<OtherName>? otherNames;
  List<OtherAcronym>? otherAcronyms;

  RegionalBloc({
    this.acronym,
    this.name,
    this.otherNames,
    this.otherAcronyms,
  });

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: acronymValues.map[json["acronym"]]!,
        name: nameValues.map[json["name"]]!,
        otherNames: json["otherNames"] == null
            ? []
            : List<OtherName>.from(
                json["otherNames"]!.map((x) => otherNameValues.map[x]!)),
        otherAcronyms: json["otherAcronyms"] == null
            ? []
            : List<OtherAcronym>.from(
                json["otherAcronyms"]!.map((x) => otherAcronymValues.map[x]!)),
      );

  Map<String, dynamic> toJson() => {
        "acronym": acronymValues.reverse[acronym],
        "name": nameValues.reverse[name],
        "otherNames": otherNames == null
            ? []
            : List<dynamic>.from(
                otherNames!.map((x) => otherNameValues.reverse[x])),
        "otherAcronyms": otherAcronyms == null
            ? []
            : List<dynamic>.from(
                otherAcronyms!.map((x) => otherAcronymValues.reverse[x])),
      };
}

enum Acronym {
  AL,
  ASEAN,
  AU,
  CAIS,
  CARICOM,
  CEFTA,
  EEU,
  EFTA,
  EU,
  NAFTA,
  PA,
  SAARC,
  USAN
}

final acronymValues = EnumValues({
  "AL": Acronym.AL,
  "ASEAN": Acronym.ASEAN,
  "AU": Acronym.AU,
  "CAIS": Acronym.CAIS,
  "CARICOM": Acronym.CARICOM,
  "CEFTA": Acronym.CEFTA,
  "EEU": Acronym.EEU,
  "EFTA": Acronym.EFTA,
  "EU": Acronym.EU,
  "NAFTA": Acronym.NAFTA,
  "PA": Acronym.PA,
  "SAARC": Acronym.SAARC,
  "USAN": Acronym.USAN
});

enum Name {
  AFRICAN_UNION,
  ARAB_LEAGUE,
  ASSOCIATION_OF_SOUTHEAST_ASIAN_NATIONS,
  CARIBBEAN_COMMUNITY,
  CENTRAL_AMERICAN_INTEGRATION_SYSTEM,
  CENTRAL_EUROPEAN_FREE_TRADE_AGREEMENT,
  EURASIAN_ECONOMIC_UNION,
  EUROPEAN_FREE_TRADE_ASSOCIATION,
  EUROPEAN_UNION,
  NORTH_AMERICAN_FREE_TRADE_AGREEMENT,
  PACIFIC_ALLIANCE,
  SOUTH_ASIAN_ASSOCIATION_FOR_REGIONAL_COOPERATION,
  UNION_OF_SOUTH_AMERICAN_NATIONS
}

final nameValues = EnumValues({
  "African Union": Name.AFRICAN_UNION,
  "Arab League": Name.ARAB_LEAGUE,
  "Association of Southeast Asian Nations":
      Name.ASSOCIATION_OF_SOUTHEAST_ASIAN_NATIONS,
  "Caribbean Community": Name.CARIBBEAN_COMMUNITY,
  "Central American Integration System":
      Name.CENTRAL_AMERICAN_INTEGRATION_SYSTEM,
  "Central European Free Trade Agreement":
      Name.CENTRAL_EUROPEAN_FREE_TRADE_AGREEMENT,
  "Eurasian Economic Union": Name.EURASIAN_ECONOMIC_UNION,
  "European Free Trade Association": Name.EUROPEAN_FREE_TRADE_ASSOCIATION,
  "European Union": Name.EUROPEAN_UNION,
  "North American Free Trade Agreement":
      Name.NORTH_AMERICAN_FREE_TRADE_AGREEMENT,
  "Pacific Alliance": Name.PACIFIC_ALLIANCE,
  "South Asian Association for Regional Cooperation":
      Name.SOUTH_ASIAN_ASSOCIATION_FOR_REGIONAL_COOPERATION,
  "Union of South American Nations": Name.UNION_OF_SOUTH_AMERICAN_NATIONS
});

enum OtherAcronym { EAEU, SICA, UNASUL, UNASUR, UZAN }

final otherAcronymValues = EnumValues({
  "EAEU": OtherAcronym.EAEU,
  "SICA": OtherAcronym.SICA,
  "UNASUL": OtherAcronym.UNASUL,
  "UNASUR": OtherAcronym.UNASUR,
  "UZAN": OtherAcronym.UZAN
});

enum OtherName {
  ACCORD_DE_LIBRE_CHANGE_NORD_AMRICAIN,
  ALIANZA_DEL_PACFICO,
  CARIBISCHE_GEMEENSCHAP,
  COMMUNAUT_CARIBENNE,
  COMUNIDAD_DEL_CARIBE,
  EMPTY,
  JMI_AT_AD_DUWAL_AL_ARABYAH,
  LEAGUE_OF_ARAB_STATES,
  OTHER_NAME,
  SISTEMA_DE_LA_INTEGRACIN_CENTROAMERICANA,
  SOUTH_AMERICAN_UNION,
  TRATADO_DE_LIBRE_COMERCIO_DE_AMRICA_DEL_NORTE,
  UMOJA_WA_AFRIKA,
  UNIE_VAN_ZUID_AMERIKAANSE_NATIES,
  UNIN_AFRICANA,
  UNIN_DE_NACIONES_SURAMERICANAS,
  UNION_AFRICAINE,
  UNIO_AFRICANA,
  UNIO_DE_NAES_SUL_AMERICANAS
}

final otherNameValues = EnumValues({
  "Accord de Libre-échange Nord-Américain":
      OtherName.ACCORD_DE_LIBRE_CHANGE_NORD_AMRICAIN,
  "Alianza del Pacífico": OtherName.ALIANZA_DEL_PACFICO,
  "Caribische Gemeenschap": OtherName.CARIBISCHE_GEMEENSCHAP,
  "Communauté Caribéenne": OtherName.COMMUNAUT_CARIBENNE,
  "Comunidad del Caribe": OtherName.COMUNIDAD_DEL_CARIBE,
  "الاتحاد الأفريقي": OtherName.EMPTY,
  "Jāmiʻat ad-Duwal al-ʻArabīyah": OtherName.JMI_AT_AD_DUWAL_AL_ARABYAH,
  "League of Arab States": OtherName.LEAGUE_OF_ARAB_STATES,
  "جامعة الدول العربية": OtherName.OTHER_NAME,
  "Sistema de la Integración Centroamericana,":
      OtherName.SISTEMA_DE_LA_INTEGRACIN_CENTROAMERICANA,
  "South American Union": OtherName.SOUTH_AMERICAN_UNION,
  "Tratado de Libre Comercio de América del Norte":
      OtherName.TRATADO_DE_LIBRE_COMERCIO_DE_AMRICA_DEL_NORTE,
  "Umoja wa Afrika": OtherName.UMOJA_WA_AFRIKA,
  "Unie van Zuid-Amerikaanse Naties":
      OtherName.UNIE_VAN_ZUID_AMERIKAANSE_NATIES,
  "Unión Africana": OtherName.UNIN_AFRICANA,
  "Unión de Naciones Suramericanas": OtherName.UNIN_DE_NACIONES_SURAMERICANAS,
  "Union africaine": OtherName.UNION_AFRICAINE,
  "União Africana": OtherName.UNIO_AFRICANA,
  "União de Nações Sul-Americanas": OtherName.UNIO_DE_NAES_SUL_AMERICANAS
});

class Translations {
  String? br;
  String? de;
  String? es;
  String? fa;
  String? fr;
  String? hr;
  String? it;
  String? ja;
  String? nl;
  String? pt;

  Translations({
    this.br,
    this.de,
    this.es,
    this.fa,
    this.fr,
    this.hr,
    this.it,
    this.ja,
    this.nl,
    this.pt,
  });

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        br: json["br"],
        de: json["de"],
        es: json["es"],
        fa: json["fa"],
        fr: json["fr"],
        hr: json["hr"],
        it: json["it"],
        ja: json["ja"],
        nl: json["nl"],
        pt: json["pt"],
      );

  Map<String, dynamic> toJson() => {
        "br": br,
        "de": de,
        "es": es,
        "fa": fa,
        "fr": fr,
        "hr": hr,
        "it": it,
        "ja": ja,
        "nl": nl,
        "pt": pt,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
