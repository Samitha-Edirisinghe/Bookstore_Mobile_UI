// details_screen.dart updated with Add to Cart button
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String bookTitle;
  final String bookAuthor;
  final double bookPrice;
  final String coverImagePath;

  const DetailsScreen({
    required this.bookTitle,
    required this.bookAuthor,
    required this.bookPrice,
    required this.coverImagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              coverImagePath,
              height: 520,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              bookTitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Author: $bookAuthor",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Price: Rs. $bookPrice",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for adding to cart
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Book added to cart!'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Add to Cart'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
