import 'package:countries_app/modelClass.dart';
import 'package:flutter/material.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bookmarked"),),
      body: Center(
        child: Column(
          children: [
            ListView.builder(
              itemCount: bookMarkList.length,
              itemBuilder: (context, index) {
              return  ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(bookMarkList[index].png!,),),
                title: Text(bookMarkList[index].common!,style: TextStyle(fontSize: 22),),
                subtitle: Text(bookMarkList[index].official!),
              );
            },)
          ],
        ),
      ),
    );
  }
}
