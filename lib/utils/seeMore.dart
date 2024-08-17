import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class SeeMore extends StatefulWidget {
  final String text;
  final String title;
  const SeeMore({ required this.text, required this.title});

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
    bool _isExpanded = false;
   @override
  Widget build(BuildContext context) {
    final words = widget.text.split(' ');
    final desplayText = _isExpanded ?
     widget.text :
      words.take(20).join(' ')
     + (words.length > 20 ? '...' : '');
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:  MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
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
        );
  }
}