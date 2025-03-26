import 'package:brana/components/details/bookDetail.dart';
import 'package:brana/components/details/bookImage.dart';
import 'package:brana/components/details/description.dart';
import 'package:brana/components/details/booksByAuthor.dart';
import 'package:brana/components/details/testimonies.dart';
import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:brana/utils/componentLoader.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;

  const Detail({super.key, required this.book});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: BranaColor.light_background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       backgroundColor: BranaColor.AppBarTransparent,
       centerTitle: true,
        leading: Container(
          color: BranaColor.WhiteColor, // Set the background color to white
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
             color: BranaColor.dark_background),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(
            height: 530,
            child: Stack(
              children: [
                Positioned(
            
                child: BookImage(image: book.img),
                ),
                 Positioned(
                  top: 230,
                  left: 0,
                  right: 0,
                  child: BookDetail(),
                  ),
                
              ],
            ),
          ),
          SizedBox(height: 10,),
          Description(description: book.description,), 
          Booksbyauthor(),
          Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
          color: BranaColor.WhiteColor,
          boxShadow: [
            BoxShadow(
                color: BranaColor.ShadowColor,
                spreadRadius: -5.0,
                blurRadius: 5.0,
                offset: Offset(0.0, 7.0))
          ],
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Testimonies: ",
            style: TextStyle(fontSize: 17, color: BranaColor.BookTitleColor),
          ),
          SizedBox(
            height: 10,
          ),
          Componentloader(list: [
            book.description,
            book.description,
            book.description,
            book.description,
            book.description,
            book.description,
            book.description,
            book.description,

          ],), 

        ],
      ),
    )
          ]
        )
      ),
    );
  }
}