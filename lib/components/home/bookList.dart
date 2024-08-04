import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {
  const Booklist({super.key});

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
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
                          image: AssetImage("assets/Born_a_crime.PNG"))
                      ),
                    ),
                  ),
                
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Born A Crime",
                          style: TextStyle(
                            fontSize: 20,
                            color: BranaColor.BookTitleColor
                          )
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Author:",
                            ),
                              SizedBox(width: 5,),
                              Text("Trevor Noah",
                              ),
                            ],
                          ),
                           SizedBox(height: 3,),
                          Text("Biography"),
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
                            "5 Books left",
                            style: TextStyle(
                              fontSize: 12,
                              color: BranaColor.LeftBookColor
                            ),
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
                        Icon(
                          Icons.favorite_border,
                          size: 25,
                          color: BranaColor.AddLibrary,
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
          )
      ]
      
    );
  }
}