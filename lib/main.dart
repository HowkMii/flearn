import 'package:flutter/material.dart';
void mian() => MyApp();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    
      
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text("Mainscreen") ,
      ),
      body: Container(
        
      ),
    );
  }
}