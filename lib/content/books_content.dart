class BooksContent {

  static List<Book> books = [
    Book("Tytuł 1", "Opis 1", "Autor 1", 10.0),
    Book("Tytuł 2", "Opis 2", "Autor 2", 10.0),
    Book("Tytuł 3", "Opis 3", "Autor 3", 10.0),
    Book("Tytuł 4", "Opis 4", "Autor 4", 10.0),
  ];

  static List<Book> getAllBooks() {
    return books;
  }

}

class Book {
  final String title;
  final String description;
  final String author;
  final double price;

  Book(this.title, this.description, this.author, this.price);

}
