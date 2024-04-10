import 'dart:convert';
import 'package:http/http.dart' as http;
import 'modelClass.dart';

class ApiCalling{

 Future loadApiData()async{

    List<CountryModel> countryList=[];

    var data = await  http.get(Uri.parse("https://restcountries.com/v3.1/all?_gl=1*16dw39g*_ga*OTA5MDA4OTc1LjE3MTIyMDkzNzc.*_ga_ZCYG64C7PL*MTcxMjI5ODk4MS4zLjEuMTcxMjI5ODk5Mi4wLjAuMA.."));
    // print(data.body);
    var d = jsonDecode(data.body);

    for(var e in d){
      countryList.add(CountryModel.fromJson(e));
    }
    return countryList;
  }


}