import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "List View",
    home: Scaffold(
      body: listView(),
      ),
      )
    );
}

Widget listView(){
  var lv=ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Wifi"),
        subtitle: Text("Wifi conection available"),
        trailing: Icon(Icons.wifi),
        onTap: (){
          debugPrint("1st Tile is clicked");
        },
      ),
ListTile(
        leading: Icon(Icons.signal_cellular_connected_no_internet_4_bar),
        title: Text("Internet"),
        subtitle: Text("Internet conection available"),
        //to make list tile clickable
        onTap: (){
          debugPrint("2nd Tile is clicked");
        },
      ),
ListTile(
        leading: Icon(Icons.wifi_tethering),
        title: Text("Wifi Tethering"),
      )
    ],
  );
}