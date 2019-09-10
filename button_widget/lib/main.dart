import 'package:flutter/material.dart';
void main() {
	runApp(MaterialApp(
		title: "Exploring UI widgets",
		home: Home(),
	));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Computer Department",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 24.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "120 seats",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Information Technology",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 24.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "120 seats",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ],
                ),
                FlightImageAsset(),
                FlightBookButton()
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/engg.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.indigo,
          child: Text(
            "Click Me!!",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)),
    );
  }

  void bookFlight(BuildContext context) {
    //create dialog
    var alertDialog = AlertDialog(
      title: Text("Success"),
      content: Text("This is Alert Dialog"),
    );

    showDialog(
      //show dialog
        context: context,
		    builder: (BuildContext context) => alertDialog);
  }
}