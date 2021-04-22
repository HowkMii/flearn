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
          RaisedButton(onPressed: (){
            str="hello";

          },
          onLongPress: (){
            setState(() {
              str="";
            });
           
          },
          child: Text("hiii"),
          splashColor: Colors.blue,
          )

        ],)
         
            
            

        )
          
        
         
        
        
        );
       
        
     


}
  
  
  
  
  
 
  

}