import 'dart:convert';

import 'package:exam/Models/modelClass.dart';
import 'package:exam/Screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'apiCalling.dart';
import 'detailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CountryModel? Obj;
  // List<CountryModel> countryList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadApiData().then((value) {});
  }

  List<CountryModel> countryList = [];

  Future loadApiData() async {
    final Data = await rootBundle.loadString("Assets/countryData.json");
    print(Data);

    var d = jsonDecode(Data);

    for (var e in d) {
      setState(() {
        countryList.add(CountryModel.fromJson(e));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Country App"),
        ),
        body: ListView.builder(
            itemCount: countryList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          countryName: countryList[index].countryName,
                          official: countryList[index].official,
                          independent: countryList[index].independent,
                          capital: countryList[index].capital,
                          flag: countryList[index].flag,
                        )));
                  },
                  child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                countryList[index].countryName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                countryList[index].official,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.network(
                              countryList[index].flag,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      )),
                ),
              );
            }));
  }
}
