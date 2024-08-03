import 'package:brana/components/home/search_bar.dart';
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        AnimatedSearchBar()
                      ],
                      
                    ),
                  )
                 )
                 
                //  Icon(
                //   Icons.shelves,
                //   size: 30,
                //   )
              ],
            )
          ],
        ),
      );
    
  }
}