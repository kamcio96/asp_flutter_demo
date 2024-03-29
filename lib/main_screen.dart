import 'package:asp_flutter_demo/books_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BooksScreen()));
                },
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('Książki', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('Płyty', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('Filmy', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        )
    );
  }
}
