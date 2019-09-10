import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long List",
      ),
      ),
     body:getlistView()
    )
   )
   );
}
//Step 1 - Prepare Data Source
//Function to Create data source that will return list of items
List<String> listElements(){
  //Create 1000 list elements, generate method
  var items=List<String>.generate(1000, (c)=>"Item $c");
  return items;
}

//Step 2 - Wrap list items with the widget
Widget getlistView(){
  var li=listElements();

  var lv=ListView.builder(
itemBuilder: (context, index){
return ListTile(
  leading: Icon(Icons.arrow_right),
  title: Text(li[index]),
  //click event
  onTap: (){
    debugPrint("${li[index]} was tapped");
  },
);
}
  );
  return lv;
}

