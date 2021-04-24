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
bool pass = true;
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
                    labelText:"password",
                    labelStyle: TextStyle(fontSize: 40),
                    hintText:"Password" ,
                    suffixIcon: IconButton(
                      icon: Icon(
                        pass? Icons.visibility: Icons.visibility_off
                      ),
                      onPressed: (){
                        setState(() {
                          pass= ! pass;
                        });
                      },
                    ),
                    
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: pass,
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