import 'package:asp_flutter_demo/content/abstract_content.dart';

class BooksContent {

  static List<Book> books = [
    Book("Tytuł 1", "Opis 1", "Autor 1", 10.0, "Tresć 1"),
    Book("Tytuł 2", "Opis 2", "Autor 2", 10.0, "Tresć 2"),
    Book("Tytuł 3", "Opis 3", "Autor 3", 10.0, "Tresć 3"),
    Book("Tytuł 4", "Opis 4", "Autor 4", 10.0, "Tresć 4"),
    Book("Tytuł 4", "Opis 4", "Autor 4", 10.0, "Tresć 4"),
    Book("Tytuł 4", "Opis 4", "Autor 4", 10.0, "Tresć 4"),
    Book("Tytuł 4", "Opis 4", "Autor 4", 10.0, "Tresć 4"),
    Book("Tytuł 4", "Opis 4", "Autor 4", 10.0, "Tresć 4"),
  ];

  static List<Book> getAllBooks() {
    return books;
  }

}

class Book extends AbstractContent {
  final String content;

  Book(String title, String description, String author, double price, this.content) : super(title, description, author, price);

}
