class CountryModel {
  final int id;
  final String countryName;
  final String official;
  final bool independent;
  final String capital;
  final String flag;

  CountryModel({
    required this.id,
    required this.countryName,
    required this.official,
    required this.independent,
    required this.capital,
    required this.flag,
  });

  factory CountryModel.fromJson(Map map){
    return CountryModel(id: map['id'], countryName: map['countryName'], official: map['official'], independent: map['independent'], capital: map['capital'], flag: map['flag']);
  }
}

