import 'package:flutter/material.dart';
void mian() => MyApp();
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
  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).push( MaterialPageRoute(
      builder: (_){

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
        child: InkWell(
          child: Text("Go to screen1",style: TextStyle(fontSize: 30)),
          onTap: (){
            selectScreen(context);
          },
          ),

      ),
    );
  }
}