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
        //width: double.infinity,
        color: b,
        child: Image.network("data:image/jpeg;base64,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"),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
        onPressed: ()=>daiki(context),),
        
      
    );
  }
}