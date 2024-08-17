import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  final String description;
  const Description({required this.description});

  @override
  _DescriptionState createState() => _DescriptionState();
}
class _DescriptionState extends State<Description> {
  bool _isExpanded = false;
   @override
  Widget build(BuildContext context) {
    final words = widget.description.split(' ');
    final desplayText = _isExpanded ?
     widget.description :
      words.take(20).join(' ')
     + (words.length > 20 ? '...' : '');
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 15.0,
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
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:  MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description: ",
            style: TextStyle(
              fontSize: 17,
              color: BranaColor.BookTitleColor
            ),
          ),
          SizedBox(height: 10,),
          Text(
            desplayText,
            style: TextStyle(
              fontSize: 15,
              color: BranaColor.BookTitleColor
            )
          ),
          if(words.length > 20) 
          Container(
            width: MediaQuery.sizeOf(context).width,

            child: Row(
              children: [
                Spacer(),
                GestureDetector(
                onTap: () {
                  setState (() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(
                  _isExpanded ? 'see less' : 'see more',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                  ),
              ),
              ]
            ),
          )            
          

        ],
        ),
    );
  }   
}

