import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {
  const Booklist({super.key});

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTapDown: (_) {
                  setState(()=> _isClicked = true);
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
              ),
            ),
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
                            image: AssetImage("assets/how_leaders_become_strategist.PNG"))
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
                            Text("How Leaders become strategist",
                            style: TextStyle(
                              fontSize: 20,
                              color: BranaColor.BookTitleColor
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Author:",
                              ),
                                SizedBox(width: 5,),
                                Text("Richard P. Rumelt",
                                ),
                              ],
                            ),
                             SizedBox(height: 3,),
                            Text("Self Help"),
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
                                Icons.star_border,
                                color: Colors.amber,)
                              ] 
                            ),
                            Text(
                              "sold out",
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
            ),

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
                            image: AssetImage("assets/Death_on_the_nile.PNG"))
                        ),
                      ),
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            Text("Death On The Nile",
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
                                Text("Agatha Christie",
                                ),
                              ],
                            ),
                             SizedBox(height: 3,),
                            Text("Fiction"),
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
                                Icons.star,
                                color: Colors.amber,)
                              ] 
                            ),
                            Text(
                              "15 Books left",
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
        
      ),
    );
  }
}