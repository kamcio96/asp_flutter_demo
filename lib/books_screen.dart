import 'package:asp_flutter_demo/abstract_list_screen.dart';
import 'package:asp_flutter_demo/content/abstract_content.dart';
import 'package:asp_flutter_demo/content/books_content.dart';
import 'package:flutter/material.dart';

class BooksScreen extends AbstractListScreen {

  @override
  Widget createInternalView(BuildContext context) {
    var books = BooksContent.getAllBooks();

    return ListView.builder(
      padding: EdgeInsets.all(0),
        itemCount: books.length,
        itemBuilder: (BuildContext ctxt, int index) {
          AbstractContent book = books[index];
          return Container(
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 5),
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    )
                  ),
                  constraints: BoxConstraints.tightFor(height: 80, width: 58),
                  child: Image.asset("sources/images/books/" + index.toString() + ".jpg", height: 150)
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 58,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(book.title),
                          Text(book.author),
                        ],
                      ),
                      Text(book.price.toString() + "zł"),
                    ],
                  )
                )
              ],
            ),
          );
        });
  }
}
