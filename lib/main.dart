import 'package:flutter/material.dart';
import 'book_card.dart'; // Import the custom widget

void main() {
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BookListScreen(),
    );
  }
}

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Store')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          BookCard(
            title: "It Ends with Us ",
            author: "Colleen Hoover",
            price: 1400.00,
            imageUrl:
                "https://m.media-amazon.com/images/I/91CqNElQaKL._SY425_.jpg",
          ),
          BookCard(
            title: "Vazhvenpathu unnoduthan",
            author: "Ramnichandran",
            price: 1300.00,
            imageUrl:
                "https://rukminim2.flixcart.com/image/416/416/regionalbooks/w/6/h/vazhvenpathu-unnoduthan-original-imadhxmnz6xrq7gd.jpeg?q=70&crop=false",
          ),
          BookCard(
            title: "Along for the Ride",
            author: "Sarah Dessen",
            price: 1600.00,
            imageUrl:
                "https://m.media-amazon.com/images/I/417ukZFABLL._SY445_SX342_.jpg",
          ),
        ],
      ),
    );
  }
}
