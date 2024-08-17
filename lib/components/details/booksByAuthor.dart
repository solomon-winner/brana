import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Booksbyauthor extends StatelessWidget {
  const Booksbyauthor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15.0
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
          ),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
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
          borderRadius: BorderRadius.circular(5),
        
        ),
              child: Column(
                children: [
                  Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/Born_a_crime.PNG'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Title',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    '300 ETB',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
                ]
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}