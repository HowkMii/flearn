import 'package:flearn/screen1.dart';
import 'package:flearn/screen2.dart';
import 'package:flutter/material.dart';
void main()=> runApp(MyApp()) ;
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    
      
    );
  }
}
class MyHomePage extends StatelessWidget {

  void selectScreen(BuildContext ctx,int n){
    Navigator.of(ctx).push( MaterialPageRoute(
      builder: (_){
        if (n==1) return ScreenOne("information 1");
        return ScreenTwo("information 2");  
        
        
      }
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      
        title:Text("Mainscreen") ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            InkWell(
              child: Text("Go to screen2",style: TextStyle(fontSize: 30)),
              onTap: (){
                selectScreen(context,1);
              },
              ),
            InkWell(
              child: Text("Go to screen2",style: TextStyle(fontSize: 30)),
              onTap: (){
                selectScreen(context,2);
              },
              ),
          ],
        ),

      ),
    );
  }
}