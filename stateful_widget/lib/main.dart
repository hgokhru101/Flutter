import 'package:flutter/material.dart';

void main(){
  runApp(
MaterialApp(title: "Stateful App Example",
home: FavoriteName(),
)
);
}
class FavoriteName extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteNameState();
  }
}
class _FavoriteNameState extends State<FavoriteName>{
String Name="";
@override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Stateful App Example"),
    ),
    body: Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
            hintText: 'Enter any name here'
            ),
            onSubmitted: (String userInput){
              setState(() {
                Name=userInput;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("You Entered $Name",
            style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    
    )
    );
  }
}