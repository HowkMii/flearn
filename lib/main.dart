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
  var b = Colors.black;
  var w = Colors.white;
bool pass = true;
  var str="";
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("APPbar title"),
        ) ,
        body: Container(
          color: Colors.black,
          
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
               Container(
                
                child: TextField(
                  decoration: InputDecoration(
                    prefixText: "+213" ,
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(width: 2,color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(60.0)
                      ) ,
                    
                    labelText:"phone",
                    labelStyle: TextStyle(fontSize: 30, color: w),
                    
                    hintStyle: TextStyle(fontSize: 20, color: w),
                  
                    
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  
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