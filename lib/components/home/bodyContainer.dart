import 'package:brana/components/home/bookList.dart';
import 'package:brana/components/home/search_bar.dart';
import 'package:brana/components/home/trendingTabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bodyContainer extends StatefulWidget {
  const bodyContainer({super.key});

  @override
  State<bodyContainer> createState() => _bodyContainerState();
}

class _bodyContainerState extends State<bodyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
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
                 )
                 
              ],
            ),
            SizedBox(height: 20,),
            Booklist()
          ],
        ),
      );
    
  }
}