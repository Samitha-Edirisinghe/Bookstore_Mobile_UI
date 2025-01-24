// 22UG1-0791
// E.D.S.R.Edirisinghe
// CCS3351 Mobile Application Development Mid term project

import 'package:flutter/material.dart';
import 'book_list.dart';

void main() {
  runApp(const BookListApp());
}

class BookListApp extends StatelessWidget {
  const BookListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon Bookstore',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BookListScreen(),
    );
  }
}
