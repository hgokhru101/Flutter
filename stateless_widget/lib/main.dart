import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  int counter=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
      body: Column(
        children: <Widget>[
        Text("Counter value is {$counter}"),
      Checkbox(
        value: false,
        onChanged: (bool newValue){
        counter++;
        print("Counter is {$counter}");
      }
      ),
      ],
      )
      ), 
    );
  }
}