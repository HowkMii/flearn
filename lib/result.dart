import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function q;
  final ResultScore;
  Result(this.q,this.ResultScore);
  String get resultphase{
    String resulttext;
    if(ResultScore>60 ){
      resulttext="you are awsome";
    }else if(ResultScore<=60){
      resulttext="you are bad";
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
         
          Text(ResultScore,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), textAlign:TextAlign.center,),
         
          Text(resultphase,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), textAlign:TextAlign.center,),
         
          FlatButton(
            child: Text("restart the app",style: TextStyle(color: Colors.blue),),
            onPressed: q,
          )
                
               

        ],
      ),
    );
  }
}