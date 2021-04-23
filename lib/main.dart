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
        appBar:AppBar(
          title: Text("appbar title"),
        ) ,
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"text field",
                    labelStyle: TextStyle(fontSize: 40),
                    hintText: "enter name"
                    
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: 20,)
        



           ],
          )
          
          ,),
       
        
            
            

        ),
        
          
        
         
        
        
        );
       
        
     


}
  
  
  
  
  
 
  

}