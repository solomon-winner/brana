import "package:brana/utils/colors.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/models/book_model/books.dart';
import 'package:brana/pages/details_page.dart';
import 'package:flutter/material.dart';
import '../../providers/books/book_provider.dart';

class BookListItem extends ConsumerWidget {
  final Book book;
  const BookListItem({super.key, required this.book});

   @override
   Widget build(BuildContext context, WidgetRef ref) {

                return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Detail(book: book);
                      },
                    ),
                  )
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: BranaColor.WhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: BranaColor.ShadowColor,
                          spreadRadius: -5.0,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 7.0),
                        )
                      ]),
                  child: Stack(children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(book.img),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.title,
                                style: TextStyle(
                                    fontSize: 20, color: BranaColor.BookTitleColor),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                             
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Author: ${book.author}",
                                style: TextStyle(
                                    color: BranaColor.BookTitleColor),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                book.category,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: BranaColor.StarColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: BranaColor.StarColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: BranaColor.StarColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: BranaColor.StarColor,
                                  ),
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                              Text(
                                " ${book.availableBooks} Books Left",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: BranaColor.LeftBookColor),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () => ref.read(bookNotifierProvider.notifier).toggleFavorite(book.id),
                              // onTap: () => setState(
                              //     () => book.isFavourite = !book.isFavourite),
                              icon: Icon(
                                book.isFavourite ?
                                      Icons.favorite :
                                      Icons.favorite_border,
                                color: book.isFavourite ?
                                      BranaColor.BadgeBackground :
                                      BranaColor.AddLibrary,
                                      size: 25,
                                    ),
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                enableFeedback: false,
                                tooltip: book.isFavourite ?
                                      "Remove from Favourites" :
                                      "Add to Favourites",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            IconButton(
                              onPressed: () => print("Add to Library"),
                              icon: Icon(
                                Icons.my_library_add_outlined,
                                color: BranaColor.AddLibrary,
                                size: 25,
                                ),

                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            );
}
}