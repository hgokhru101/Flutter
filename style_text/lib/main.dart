import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(alignment: Alignment.center,
      color: Colors.amber,
      child: Text(
        "Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          //1. Decoration and font size
          decoration: TextDecoration.none,
          fontSize: 75.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic,
          color: Colors.black
        ),

      
      
      ),
      )
    ,);
  }

}