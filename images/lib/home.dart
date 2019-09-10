import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 30.0, top: 60.0),
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Anjali Chachra",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                    Expanded(
                        child: Text(
                      "Assistant Professor",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Richa Chachra",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                    Expanded(
                        child: Text(
                      "Senior Software Engineer",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
	              MyImageAsset()
              ],
            )));
  }
}

class MyImageAsset extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/us.jpg');
    Image image = Image(image: assetImage, width: 350.0, height: 350.0,);
    return Container(child: image,);
  }
}