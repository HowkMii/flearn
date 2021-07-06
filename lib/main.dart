
import 'package:flutter/material.dart';
import 'info.dart';

void main() => runApp(MyApp());
Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter  App',
    home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
 final List<Info> li=[
  Info(name: "abdelhakim",height: 179,dateTime: DateTime.now()),
  Info(name: "mekki",height: 179,dateTime: DateTime.now()),
  Info(name: "mostafa",height: 179,dateTime: DateTime.now()),
  Info(name: "lahcen",height: 179,dateTime: DateTime.now()),
  Info(name: "yacine",height: 179,dateTime: DateTime.now())
 ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('flutter App',style: TextStyle(color: b),),),
      body: Container(
        //width: double.infinity,
        color: b,
        child: Column(
          children:<Widget> [
            ...li.map((val){
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Column(

                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(val.name, style: TextStyle(color: w,fontSize: 16),),
                        Text("${val.height}", style: TextStyle(color: w,fontSize: 16),),
                      ],
                    ),
                    Text("${val.dateTime}", style: TextStyle(color: w,fontSize: 16),),
                    
                  ],),
                  
              );
            }).toList(),
          ],
        )

      ),
    );
  }
}