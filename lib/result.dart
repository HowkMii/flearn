import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function q;
  Result(this.q);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
         
                 
          Text("Done!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          FlatButton(
            child: Text("restart the app",style: TextStyle(color: Colors.blue),),
            onPressed: q,
          )
                
               

        ],
      ),
    );
  }
}