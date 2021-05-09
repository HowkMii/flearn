import 'package:flutter/material.dart';
import 'text.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter app",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(


      ),
    );
  }
 
  
}


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
 

}
class _MyHomePageState extends State<MyHomePage>{
  var _textStyle= TextStyle(
    color: Colors.black
   );
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text("Appbar", style: _textStyle,),
        ),
        body: Container(
          alignment: AlignmentDirectional.center,
          child: Stack(
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                color: Colors.blueAccent,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blueAccent,
              ),
               Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
              )
            ],
          ),
         
        ),
      ),

    );
  }
 }

  
  
  
  
 
  
