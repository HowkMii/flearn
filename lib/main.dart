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
          margin: EdgeInsets.all(8),
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
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"text field",
                    labelStyle: TextStyle(fontSize: 40),
                    hintText: "enter name",
                    icon: Icon(Icons.person_outline),
                    
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
             ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"text field",
                    labelStyle: TextStyle(fontSize: 40),
                    hintText: "password ",
                    icon: Icon(Icons.person_outline),
                    
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
             ),
               Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText:"text field",
                    labelStyle: TextStyle(fontSize: 40),
                    hintText: "phone number ",
                    icon: Icon(Icons.person_outline),
                    
                  ),
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