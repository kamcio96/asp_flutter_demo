import 'package:asp_flutter_demo/abstract_list_screen.dart';
import 'package:asp_flutter_demo/content/books_content.dart';
import 'package:flutter/material.dart';

class BooksScreen extends AbstractListScreen {

  @override
  Widget createInternalView() {
    var books = BooksContent.getAllBooks();

    return ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Text(books[index].title, style: TextStyle(fontSize: 120));
        });
  }
}
