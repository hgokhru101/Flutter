import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
home: Scaffold(appBar: AppBar(
  title: Text("Scaffold Widget"),
  backgroundColor: Colors.orange,
),
body: Center(child: Container(
  child:Text("This is body of Scaffold widget"), 
  ),
  ) ,
floatingActionButton: FloatingActionButton(
  child: Icon(Icons.message),
  onPressed: (){},
  backgroundColor: Colors.orange,
  ),
bottomNavigationBar: BottomAppBar(
  color: Colors.orange,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
  IconButton(icon: Icon(Icons.settings),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.message),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.people),onPressed: (){},color: Colors.white,),
],
),
),
drawer: Drawer(
  
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header',),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              
            ),
            ListTile(
              title: Text('Item 2'),
              
            ),
          ],
        ),
      ),
)
  )
  );
}