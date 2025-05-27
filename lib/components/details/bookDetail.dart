import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:brana/utils/stars.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookDetail extends ConsumerWidget {
 final String title;
  // final String subtitle;
  final String author;
  final int year;
  final int pages;
  final double price;
  final String language;
  final String publisher;
  final double rating;
  final bool isWishlist;

  const BookDetail({
    super.key,
    required this.title,
    // required this.subtitle,
    required this.price,
    required this.author,
    required this.year,
    required this.pages,
    required this.language,
    required this.publisher,
    required this.rating,
    required this.isWishlist,
  });
  // final String Detail;
  // const BookDetail({required this.Detail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0
      ),
      decoration: BoxDecoration(
        color: BranaColor.WhiteColor,
        boxShadow: [
          BoxShadow(
            color: BranaColor.ShadowColor,
            spreadRadius: -5.0,
            blurRadius: 5.0,
            offset: Offset(0.0,7.0)
          )
        ],
        borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
          title,
          style:TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: BranaColor.BookTitleColor
          ),
          softWrap: true,
        ),
             SizedBox(height: 5,),
          Text(
          title,
          style:TextStyle(
            fontSize: 20,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
        
        SizedBox(height: 10,),
         StarRating(
            rating: rating,
            starSize: 24,
            color: BranaColor.StarColor,
          ),
        SizedBox(height: 10,),
          Text(
          "Author: $author",
          style:TextStyle(
            fontSize: 16,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
         Text(
              "Price: \$${price.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 15,
                color: BranaColor.BookTitleColor
              ),
            ),
           Text(
          "Year: $year",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Pages: $pages",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Language: $language",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Publisher: Penguin Random House",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10
          ),
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            children: [
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: BranaColor.WhiteColor,
                  foregroundColor: BranaColor.BookTitleColor,
                  side: BorderSide(
                    color: BranaColor.BorderColor,
                    style: BorderStyle.solid,
                    width: 1
                  )
                ),
                child: Row(
                  children: [
                    
                    Icon(
                      Icons.favorite_outline,
                      color: BranaColor.BookTitleColor,
                      size: 20,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Add to Wishlist",
                      style: TextStyle(
                        color: BranaColor.BookTitleColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
                ),
                SizedBox(width: 10,),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: BranaColor.WhiteColor,
                  foregroundColor: BranaColor.BookTitleColor,
                  side: BorderSide(
                    color: BranaColor.BorderColor,
                    style: BorderStyle.solid,
                    width: 1
                  )
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.my_library_add_outlined,
                      color: BranaColor.BookTitleColor,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Add to Shelve",
                      style: TextStyle(
                        color: BranaColor.BookTitleColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        )
       ]
      ),
    );
  }
}