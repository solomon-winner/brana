import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  // final String Detail;
  // const BookDetail({required this.Detail});

  @override
  Widget build(BuildContext context) {
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
          "Born a Crime",
          style:TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
          Text(
          "SubTitle: Born a Crime",
          style:TextStyle(
            fontSize: 20,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
        SizedBox(height: 10,),
          Row(
            children: [
              Icon(
                Icons.star,
                color: BranaColor.StarColor ,
                ),
              Icon(Icons.star,
              color: BranaColor.StarColor,),
              Icon(Icons.star,
              color: BranaColor.StarColor,
              ),
              Icon(Icons.star,
              color: BranaColor.StarColor,
              ),
             Icon(
              Icons.star_half_outlined,
              color: Colors.amber,)
            ] 
             ),
          Text(
          "Author: Trevor Noah",
          style:TextStyle(
            fontSize: 16,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
           Text(
          "Year: 2024",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Pages: 300",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Language: English",
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