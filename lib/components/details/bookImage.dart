import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String image;

  const BookImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        showDialog (
        context: context, 
        builder: (BuildContext context) {
          return Dialog(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: BranaColor.light_background,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(image)
                    )
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  )
              ],
            ),
          );
        }
        );
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.40,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              
            ),
          ]
        ),
      ),
    );
  }
}