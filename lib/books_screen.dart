
import 'package:asp_flutter_demo/content/books_content.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var books = BooksContent.getAllBooks();

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blueAccent,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    "Książki",
                    style: TextStyle(fontSize: 32, color: Colors.white)
                ),
                RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart),
                    label: Text("10zł")
                ),
              ],
            )
          ),

          ListView.builder(
            itemCount: books.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Text(books[index].title);
            }
          ),
        ],
      )
    );
  }

}