// book_list.dart updated for Exercise 1 with additional books
import 'package:flutter/material.dart';
import 'book.dart';
import 'details_screen.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Ceylon Bookstore'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Book(
              coverImagePath: 'assets/images/1.png',
              title: 'Harry Potter',
              author: 'Jack Thorne',
              price: 1250,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(
                      bookTitle: 'Harry Potter',
                      bookAuthor: 'Jack Thorne',
                      bookPrice: 1250,
                      coverImagePath: 'assets/images/1.png',
                    ),
                  ),
                );
              },
            ),
            Book(
              coverImagePath: 'assets/images/2.png',
              title: 'A Great Reckoning',
              author: 'Louise Penny',
              price: 1000,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(
                      bookTitle: 'A Great Reckoning',
                      bookAuthor: 'Louise Penny',
                      bookPrice: 1000,
                      coverImagePath: 'assets/images/2.png',
                    ),
                  ),
                );
              },
            ),
            Book(
              coverImagePath: 'assets/images/3.png',
              title: 'The Girl on the Train',
              author: 'Paula Hawkins',
              price: 1200,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(
                      bookTitle: 'The Girl on the Train',
                      bookAuthor: 'Paula Hawkins',
                      bookPrice: 1200,
                      coverImagePath: 'assets/images/3.png',
                    ),
                  ),
                );
              },
            ),
            Book(
              coverImagePath: 'assets/images/4.png',
              title: 'Mostly Void, Partially Stars',
              author: 'Joseph Fink',
              price: 1500,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(
                      bookTitle: 'Mostly Void, Partially Stars',
                      bookAuthor: 'Joseph Fink',
                      bookPrice: 1500,
                      coverImagePath: 'assets/images/4.png',
                    ),
                  ),
                );
              },
            ),
            Book(
              coverImagePath: 'assets/images/5.png',
              title: 'The Hobbit',
              author: 'J.R.R. Tolkien',
              price: 1400,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(
                      bookTitle: 'The Hobbit',
                      bookAuthor: 'J.R.R. Tolkien',
                      bookPrice: 1400,
                      coverImagePath: 'assets/images/5.png',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
