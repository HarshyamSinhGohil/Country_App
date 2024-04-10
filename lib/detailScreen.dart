import 'package:flutter/material.dart';

import 'bookMarkScreen.dart';
import 'modelClass.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.png, required this.common, required this.official, required this.capital, required this.region, required this.subregion, required this.landlocked, required this.area, required this.flag, required this.population, required this.timezones,required this.continents, required this.independent, required this.status});

  final String? png;
  final String? common;
  final String? official;
  final List<String>? capital;
  final String? region;
  final String? subregion;
  final bool? landlocked;
  final double? area;
  final String? flag;
  final int? population;
  final List<String>? timezones;
  final List<String>? continents;
  final bool? independent;
  final String? status;



  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.common!),
        actions: [
          IconButton(onPressed: (){

              bookMarkList.add(BookMark(common: widget.common!, official: widget.official!, png: widget.png!));


          }, icon: Icon(Icons.bookmark))
        ],
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.network(widget.png!,height: 160,width: 140,),
                   SizedBox(width: 30,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(widget.common!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                       SizedBox(height: 10,),
                       Text("${widget.capital!.first}",style: TextStyle(fontSize: 17),),
                     ],
                   )

                  ],
                ),

                Text("Official name : ${widget.official!}",style: TextStyle(fontSize: 17),),
                SizedBox(height: 10,),
                Text("Capital of Country : ${widget.capital!.first}",style: TextStyle(fontSize: 17)),
                SizedBox(height: 10,),
                Text("Region : ${widget.region!}",style: TextStyle(fontSize: 17)),
                SizedBox(height: 10,),
                Text("Subregion of Country : ${widget.subregion!}",style: TextStyle(fontSize: 17)),
                SizedBox(height: 10,),
                Text("Status : ${widget.status!}",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Text("independent true or false : ${widget.independent!.toString()}",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Text("Is Country Landlocked : ${widget.landlocked!.toString()}",style: TextStyle(fontSize: 17)),
                SizedBox(height: 10,),
                Text("Total area of Country : ${widget.area!.toString()}",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Text("Flag of Country : ${widget.flag!}",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Text("Total population of Country : ${widget.population!.toString()}",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Text("Timezone of Country : ${widget.timezones!.first}",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Text("continent : ${widget.continents!.first}",style: TextStyle(fontSize: 16)),
              ],
            ),
          )
      ),
    );
  }
}
