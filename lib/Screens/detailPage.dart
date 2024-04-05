import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.countryName, required this.official, required this.independent, required this.capital, required this.flag});

  final String countryName;
  final String official;
  final bool independent;
  final String capital;
  final String flag;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              height: 600,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Image.network(widget.flag,fit: BoxFit.contain,),
                  SizedBox(height: 15,),
                  Text(widget.countryName,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("Official Name : ${widget.official}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                  SizedBox(height: 10,),
                  Text("Capital : ${widget.capital}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                  SizedBox(height: 10,),
                  Text("Independent : ${widget.independent}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
