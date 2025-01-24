import 'package:flutter/material.dart';
import 'book.dart';

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
          children: const [
            Book(
              coverImagePath: 'assets/images/1.png',
              title: 'Harry Potter',
              author: 'Jack Thorne',
              price: 1250,
            ),
            Book(
              coverImagePath: 'assets/images/2.png',
              title: 'A Great Reckoning',
              author: 'Louise Penny',
              price: 1000,
            ),
            Book(
              coverImagePath: 'assets/images/3.png',
              title: 'The Girl on the Train',
              author: 'John Gray',
              price: 1200,
            ),
            Book(
              coverImagePath: 'assets/images/4.png',
              title: 'Paula Hawkins',
              author: 'John Gray',
              price: 1100,
            ),
            Book(
              coverImagePath: 'assets/images/5.png',
              title: 'Mostly Void, Partially Stars',
              author: 'Joseph Fink',
              price: 1000,
            ),
          ],
        ),
      ),
    );
  }
}
