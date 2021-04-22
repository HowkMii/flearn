import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
  
}


class _MyAppState extends State<MyApp>{
  var str="";
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("appbar title"),) ,
        body: Column(children: <Widget>[
          Text(str,style: TextStyle( ),),
         FlatButton(onPressed: null, color: Colors.black, disabledTextColor: Colors.greenAccent,
          child: Text("flat button ", style: TextStyle(fontSize: 30),),
          padding: EdgeInsets.fromLTRB(30, 30, 20, 40),
         )

        ],)
         
            
            

        )
          
        
         
        
        
        );
       
        
     


}
  
  
  
  
  
 
  

}