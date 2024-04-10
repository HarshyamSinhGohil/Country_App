import 'package:countries_app/apiCalling.dart';
import 'package:countries_app/modelClass.dart';
import 'package:countries_app/provider.dart';
import 'package:countries_app/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),)
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, theme, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: (theme.istheme==true) ? ThemeData.light() : ThemeData.dark(),
            home: const SplashScreen(),
          );
        }
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<CountryModel> countryList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiCalling().loadApiData().then((value) {
      setState(() {
        countryList = value;
      });
    });
  }



  @override
  Widget build(BuildContext context) {

    final proVar = Provider.of<ThemeProvider>(context, listen: true);

    return Scaffold(
        appBar: AppBar(
          title: Text("Countries",style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [
            Row(
              children: [
                Switch(
                    value: proVar.getTheme,
                    onChanged: (value) {
                      proVar.setTheme = value;
                    }),
                SizedBox(width: 10,)
              ],
            )

          ],
        ),
        body:ListView.builder(
          itemCount: countryList.length,
          itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DetailScreen(
                    png: countryList[index].flags!.png!,
                    common: countryList[index].name!.common!,
                    official: countryList[index].name!.official!,
                    capital: countryList[index].capital!,
                    region: countryList[index].region!,
                    subregion: countryList[index].subregion!,
                    landlocked: countryList[index].landlocked!,
                    area: countryList[index].area,
                    flag: countryList[index].flag!,
                    population: countryList[index].population!,
                    timezones: countryList[index].timezones!,
                    continents: countryList[index].continents!,
                    independent: countryList[index].independent!,
                    status: countryList[index].status!,
                  ),));
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(countryList[index].flags!.png!,),),
              title: Text(countryList[index].name!.common!,style: TextStyle(fontSize: 22),),
              subtitle: Text(countryList[index].name!.official!),
            ),
          );
        },)


    );
  }
}
