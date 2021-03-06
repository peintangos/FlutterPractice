import 'package:flutter/material.dart';

void main() {
  runApp(BookApp());
}

class Book {
  final String title;
  final String author;

  // Book(this.title, this.author);
  Book(this.title, this.author);
}

class BookApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookAppStore();
}

class _BookAppStore extends State<BookApp> {
  Book? _selectedBook;

  List<Book> books = [
    Book("Left Hand of Darkness", "Ursula K. Ke Guin"),
    Book("ssss", "bbb"),
    Book("Ldedddft Hand of Darkness", "Ursula K"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Books App",
      home: Navigator(
        pages: [
          MaterialPage(
              child: BooksListScreen(
                books: books,
                onTapped: _handleBookTapped,
              ),
              key: ValueKey("BooksListPage")),
          if (_selectedBook != null) BookDetailsPage(book: _selectedBook!)
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          // Update the list of pages by setting _selectedBook to null
          setState(() {
            _selectedBook = null;
          });

          return true;
        },
      ),
    );
  }

  void _handleBookTapped(Book book) {
    setState(() {
      _selectedBook = book;
    });
  }
}

class BooksListScreen extends StatelessWidget {
  final List<Book> books;
  final ValueChanged<Book> onTapped;

  BooksListScreen({required this.books, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          for (var book in books)
            ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
              onTap: () => onTapped(book),
            )
        ],
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (book != null) ...[
              Text(book.title, style: Theme.of(context).textTheme.headline6),
              Text(book.author, style: Theme.of(context).textTheme.headline1),
            ]
          ],
        ),
      ),
    );
  }
}

class BookDetailsPage extends Page {
  final Book book;

  BookDetailsPage({required this.book}) : super(key: ValueKey(book));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this,
        builder: (BuildContext contest) {
          return BookDetailsScreen(book: book);
        });
  }
}
