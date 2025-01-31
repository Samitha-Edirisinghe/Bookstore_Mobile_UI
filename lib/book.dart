// book.dart updated for Exercise 1
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final double price;
  final VoidCallback onTap;

  const Book({
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color.fromARGB(155, 38, 0, 255),
        child: SizedBox(
          width: 50,
          height: 600,
          child: Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    author,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 19, 19, 19),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    coverImagePath,
                    height: 400,
                    width: 500,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.translate(
                        offset: const Offset(42, 0),
                        child: Text(
                          'Rs. $price',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Transform.translate(
                        offset: const Offset(-42, 0),
                        child: ElevatedButton(
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
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: const Text('Add to cart'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
