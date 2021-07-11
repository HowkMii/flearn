import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'info.dart';

void main() => runApp(MyApp());
Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(primaryColor: Colors.green,accentColor: Colors.pinkAccent,fontFamily: 'Quicksand',appBarTheme:AppBarTheme(textTheme:ThemeData.light().textTheme.copyWith(
    title: TextStyle(fontFamily:'OpenSans', fontSize: 25, )
    )) ),
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
  Info(name: "yacine",height: 179,dateTime: DateTime.now()),
  Info(name: "abdelhakim",height: 179,dateTime: DateTime.now()),
  Info(name: "mekki",height: 179,dateTime: DateTime.now()),
  Info(name: "mostafa",height: 179,dateTime: DateTime.now()),
  Info(name: "lahcen",height: 179,dateTime: DateTime.now()),
  Info(name: "yacine",height: 179,dateTime: DateTime.now())

 ];
  void daiki(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_){
      
      return  ListView.builder(
        
            itemBuilder:(_,i){
              return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                  color: Theme.of(ctx).primaryColor,
                  shadowColor: Colors.greenAccent,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(li[i].name, style: TextStyle(color: w,fontSize: 16),),
                            Text("${li[i].height}", style: TextStyle(color: w,fontSize: 16),),
                          ],
                        ),
                        Text("${DateFormat().format(li[i].dateTime)}", style: TextStyle(color: w,fontSize: 16),),
                        
                      ],),
                  ),
                    
                ));
            } ,
            itemCount: li.length,
           
          );
    });
   
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('flutter App',style: TextStyle(color: b),),),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: GridView(
          children: <Widget>[],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: maxCrossAxisExtent),
         
        ),
      ),
      
      
     ); }
}