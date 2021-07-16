import 'package:flearn/screen1.dart';
import 'package:flearn/screen2.dart';
import 'package:flutter/material.dart';
void main()=> runApp(MyApp()) ;
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/':(context)=> MyHomePage(),
        '/x1':(context)=> ScreenOne(),
        '/x2':(context)=> ScreenTwo(),
      },
    
      
    );
  }
}
class MyHomePage extends StatelessWidget {

  void selectScreen(BuildContext ctx,int n){
    Navigator.of(ctx).pushReplacementNamed(
      n==1 ? '/x1':'/x2',
      arguments: {

      'id':10,
      'title':'info1',
      },
    );
        
      
  }

  List<Widget> _page=[
    Scaffold(
      appBar: AppBar(
        title: Text("Part 1"),
        
      ),
      body: Center(
        child: Text("Text1"),
      ),
    ),
     Scaffold(
      
      body: Center(
        child: Text("Text2"),
      ),
    )
  ];
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