import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:brana/utils/stars.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/books/book_provider.dart';

class BookDetail extends ConsumerWidget {
 final String bookId;

  const BookDetail({
    super.key,
    required this.bookId,
    
  });
  // final String Detail;
  // const BookDetail({required this.Detail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final bookState = ref.watch(bookNotifierProvider);

  final book = bookState.when(
    data: (state) => state.books.firstWhere((b) => b.id == bookId),
    loading: () => null,
    error: (_, __) => null,
  );

  if (book == null) {
    return Center(child: CircularProgressIndicator());
  }

  final isWishlist = book.isWishlist;
  print("####################${book.isWishlist}");
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
          book.title,
          style:TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: BranaColor.BookTitleColor
          ),
          softWrap: true,
        ),
             SizedBox(height: 5,),
          Text(
          book.title,
          style:TextStyle(
            fontSize: 20,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
        
        SizedBox(height: 10,),
         StarRating(
            rating: book.rating,
            starSize: 24,
            color: BranaColor.StarColor,
          ),
        SizedBox(height: 10,),
          Text(
          "Author: ${book.author}",
          style:TextStyle(
            fontSize: 16,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
         Text(
              "Price: \$${book.price.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 15,
                color: BranaColor.BookTitleColor
              ),
            ),
           Text(
          "Year: ${book.year}",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Pages: ${book.pages}",
          style:TextStyle(
            fontSize: 15,
            color: BranaColor.BookTitleColor
          ),
        ),
           Text(
          "Language: ${book.language}",
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
                onPressed: () => ref.read(bookNotifierProvider.notifier).addOrRemoveWishlist(bookId),
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
                     isWishlist? Icons.favorite: Icons.favorite_outline ,
                      color: BranaColor.BookTitleColor,
                      size: 20,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      isWishlist? "remove from wishlist" : "Add to Wishlist",
                      style: TextStyle(
                        color: BranaColor.BookTitleColor,
                        fontSize: 10,
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