
import 'package:flutter/material.dart';

abstract class AbstractListScreen extends StatelessWidget {

  Widget createInternalView(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Książki",
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                    RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart),
                        label: Text("10zł")),
                  ],
                )),
            Container(
              constraints: BoxConstraints.tightFor(height: MediaQuery.of(context).size.height - 108.0),
              child: createInternalView(context),
            )
          ],
        ));
  }

}
