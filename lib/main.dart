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
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
               Container(
                
                child: TextField(
                  decoration: InputDecoration(
                    
                    labelText:"Password",
                    labelStyle: TextStyle(fontSize: 30, color: w),
                    hintText:"Password" ,
                    hintStyle: TextStyle(fontSize: 20, color: w),
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
                  style: TextStyle(color: Colors.white),
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