class CountryModel {
  final Name? name;
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final String? subregion;
  final Languages? languages;
  final Map<String, Translation>? translations;
  final List<double>? latlng;
  final bool? landlocked;
  final double? area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final Gini? gini;
  final String? fifa;
  final Car? car;
  final List<String>? timezones;
  final List<String>? continents;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  CountryModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
    idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
    altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
    translations: Map.from(json["translations"]!).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x)),
    landlocked: json["landlocked"],
    area: json["area"],
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
    population: json["population"],
    gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
    fifa: json["fifa"],
    car: json["car"] == null ? null : Car.fromJson(json["car"]),
    timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
    continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
    flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
    coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"],
    capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
  );


}

class CapitalInfo {
  final List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
  );
}



class Car {
  final List<String>? signs;
  final String? side;

  Car({
    this.signs,
    this.side,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? [] : List<String>.from(json["signs"]!.map((x) => x)),
    side: json["side"],
  );
}

class CoatOfArms {
  final String? png;
  final String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );
}

class Currencies {
  final Eur? eur;

  Currencies({
    this.eur,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    eur: json["EUR"] == null ? null : Eur.fromJson(json["EUR"]),
  );
}

class Eur {
  final String? name;
  final String? symbol;

  Eur({
    this.name,
    this.symbol,
  });

  factory Eur.fromJson(Map<String, dynamic> json) => Eur(
    name: json["name"],
    symbol: json["symbol"],
  );
}

class Demonyms {
  final Eng? eng;
  final Eng? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );
}

class Eng {
  final String? f;
  final String? m;

  Eng({
    this.f,
    this.m,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );
}

class Flags {
  final String? png;
  final String? svg;
  final String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    png: json["png"],
    svg: json["svg"],
    alt: json["alt"],
  );
}

class Gini {
  final double? the2018;

  Gini({
    this.the2018,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
    the2018: json["2018"]?.toDouble(),
  );
}

class Idd {
  final String? root;
  final List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"]!.map((x) => x)),
  );
}

class Languages {
  final String? ell;
  final String? tur;

  Languages({
    this.ell,
    this.tur,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    ell: json["ell"],
    tur: json["tur"],
  );
}

class Maps {
  final String? googleMaps;
  final String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );
}

class Name {
  final String? common;
  final String? official;
  final NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: json["nativeName"] == null ? null : NativeName.fromJson(json["nativeName"]),
  );
}

class NativeName {
  final Translation? ell;
  final Translation? tur;

  NativeName({
    this.ell,
    this.tur,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    ell: json["ell"] == null ? null : Translation.fromJson(json["ell"]),
    tur: json["tur"] == null ? null : Translation.fromJson(json["tur"]),
  );
}

class Translation {
  final String? official;
  final String? common;

  Translation({
    this.official,
    this.common,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    official: json["official"],
    common: json["common"],
  );
}

class PostalCode {
  final String? format;
  final String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"],
    regex: json["regex"],
  );
}


class BookMark{
  final String? common;
  final String? official;
  final String? png;

  BookMark( {required this.common, required this.official, required this.png,});
}
List<BookMark> bookMarkList=[];