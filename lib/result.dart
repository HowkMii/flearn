import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function q;
  final resultScore;
  Result(this.q,this.resultScore);
  String get resultphase{
    String resulttext;
    if(resultScore>60 ){
      resulttext="you are awsome";
    }else if(resultScore<=60){
      resulttext="you are bad";
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
         
          Text('$resultScore',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), textAlign:TextAlign.center,),
         
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