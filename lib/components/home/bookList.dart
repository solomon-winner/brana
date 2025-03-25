import 'dart:convert';
import 'package:brana/models/books.dart';
import 'package:brana/pages/details_page.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {
  const Booklist({super.key});

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  List<Book> bookList = [];

  _initData() async{
   String data = await DefaultAssetBundle.of(context).loadString("assets/info.json");
   List<dynamic> jsonResult = json.decode(data);

   setState((){
    bookList = jsonResult.map((json) => Book.fromJson(json)).toList();
   });

  }
  @override
  void initState() {
    super.initState();
     _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: bookList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          Book book = bookList[index];
          bool _isClicked = book.isFavourite;
          return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context) {
                        return Detail(book: book);
                      })
                     )
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: BranaColor.WhiteColor,
                    boxShadow:  [
                      BoxShadow(
                        color: BranaColor.ShadowColor,
                        spreadRadius: -5.0,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 7.0)
                      )
                    ]
                  ),
                  child: Stack(
                    children:[ 
                      Row(
                     children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          // margin: EdgeInsets.only(top: 30),
                          width: MediaQuery.sizeOf(context).width / 3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                book.img
                              ))
                          ),
                        ),
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width/2,
                          child: Column(
                            crossAxisAlignment:  CrossAxisAlignment.start,
                            children: [
                              Text(book.title,
                              style: TextStyle(
                                fontSize: 20,
                                color: BranaColor.BookTitleColor
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              ),
                              SizedBox(height: 10,),
                                Text("Author: ${book.author}",
                              style: TextStyle(
                                color: BranaColor.BookTitleColor
                              ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  ),
                              
                               SizedBox(height: 3,),
                              Text(book.category,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              ),
                              SizedBox(height: 3,),
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
                               " ${book.availableBooks} Books Left",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: BranaColor.LeftBookColor
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )
                            ],
                          ),
                        ),
                      )
                      ] 
                    ),
                    
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => setState(() => book.isFavourite = !book.isFavourite),
                              child: _isClicked ? Icon(
                                Icons.favorite,
                                color: BranaColor.BadgeBackground,
                                size: 25,
                                ) :Icon(
                                Icons.favorite_border,
                                size: 25,
                                color: BranaColor.AddLibrary,
                              ) ,
                            ),
                              SizedBox(height: 10,),
                               Icon(
                              Icons.my_library_add_outlined,
                              size: 25,
                              color: BranaColor.AddLibrary,
                            ),
                          ],
                        ),
                      ),
                    )
                  ]
                  ),
                ),
              ),
            );
        },
       
    )
    );
  }
}
