
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
  final x1= Info(name: "abdelhakim",height: 179,dateTime: DateTime.now());
  final x2= Info(name: "mekki",height: 179,dateTime: DateTime.now());
  final x3= Info(name: "mostafa",height: 179,dateTime: DateTime.now());
  final x4= Info(name: "lahcen",height: 179,dateTime: DateTime.now());
  final x5= Info(name: "yacine",height: 179,dateTime: DateTime.now());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('flutter App',style: TextStyle(color: b),),),
      body: Container(
        //width: double.infinity,
        color: b,
        child: Column(
          children:<Widget> [
            Text(x1.name, style: TextStyle(color: w,fontSize: 34),),
          ],
        )

      ),
    );
  }
}