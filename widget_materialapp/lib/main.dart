import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(title: "Title of Msterisl App",
  home: FirstPage(),
  ));
}
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("This is Scaffold App Bar"),
      ),
      body: Text("I'm body of Scaffold Widget"),
    );
  }
}

/*void main(){
  runApp(Scaffold(
    appBar: AppBar(title: Text("First Page"),
    ),
    body: Text("Body of Scaffold Widget"),
  )
  );
}*/