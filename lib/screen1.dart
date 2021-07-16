
import 'package:flearn/screen2.dart';
import 'package:flutter/material.dart';
class ScreenOne extends StatelessWidget {
  
   void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacementNamed(
     '/x2',
    );
  }
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("screen one"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.category),text: ("Screen 1"),),
              Tab(icon: Icon(Icons.category),text: ("Screen 1"),),
            ],
          ),
          ),
        body: TabBarView(
            children: <Widget>[
              ScreenTwo(),
              ScreenTwo(),
            ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Text("${routeArg['id']}",style: TextStyle(fontSize: 30)),
              Text(routeArg['title'],style: TextStyle(fontSize: 30)),
              InkWell(
                    child: Text("Go to screen1",style: TextStyle(fontSize: 30)),
                    onTap: (){
                      selectScreen(context);
                    },
                    ),
            ],
          ), 
        ),
      ),
    );
  }
}