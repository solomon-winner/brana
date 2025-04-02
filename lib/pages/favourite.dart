import 'package:brana/components/favourite/favourite_list.dart';
import 'package:brana/components/home/search_bar.dart';
import 'package:brana/components/home/trendingTabs.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: trendingTabs(),
          ),

                      Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedSearchBar()
                      ],
                    ),
                    
                  )
                 ),
                 
              ],
            ),

            
            SizedBox(height: 20,),
            Expanded(
              child: FavouriteList()
            )
        ],
      )
      );
    }
 }
