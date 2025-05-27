import 'package:flutter/material.dart';
import 'package:brana/components/details/bookDetail.dart';
import 'package:brana/components/details/bookImage.dart';
import 'package:brana/components/details/description.dart';
import 'package:brana/components/details/booksByAuthor.dart';
import 'package:brana/components/details/testimonies.dart';
import 'package:brana/models/book_model/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:brana/utils/componentLoader.dart';

class Detail extends StatelessWidget {
  final Book book;
  Detail({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: BranaColor.light_background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: BranaColor.AppBarTransparent,
        elevation: 0,
        centerTitle: true,
        leading: Container(
          color: BranaColor.WhiteColor,
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: BranaColor.dark_background),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Book image
            BookImage(image: "assets/BCNA.png"),

            // Book Detail section (under image, not overlapping)
               BookDetail(
                title: book.title,
                author: book.author,
                year: book.year,
                pages: book.pages,
                price: book.price,
                language: book.language,
                publisher: book.publisher ?? "Unknown publisher",
                rating: book.rating,
                isWishlist: book.isWishlist,

              ),
            

            SizedBox(height: 20),

            // Description section
            Description(description: book.description),

            // Books by the same author
            Booksbyauthor(),

            // Testimonies
            Container(
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.all(15),
               padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: BranaColor.WhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: BranaColor.ShadowColor,
                    spreadRadius: -5.0,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 7.0),
                  )
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Testimonies:",
                    style: TextStyle(fontSize: 17, color: BranaColor.BookTitleColor),
                  ),
                  SizedBox(height: 10),
                  Componentloader(
                    list: List.generate(4, (index) => book.description),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}