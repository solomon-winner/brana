import 'package:brana/utils/colors.dart';
import 'package:brana/utils/seeMore.dart';
import 'package:flutter/material.dart';

class Componentloader extends StatefulWidget {
  final List<String> list;
  final String testimonier;

  const Componentloader({super.key, required this.list, this.testimonier = ''});

  @override
  State<Componentloader> createState() => _ComponentloaderState();
}

class _ComponentloaderState extends State<Componentloader> {
  int _displayCount = 2;

  void _loadMore() {
    setState(() {
      _displayCount += 2;
    });
  }

  void _Unload() {
    setState(() {
      _displayCount = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayedComponent = widget.list.take(_displayCount).toList();
    final hasMore = _displayCount < widget.list.length;
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...displayedComponent.map((component) => Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SeeMore(
                    text: component,
                    testimonier:
                        widget.testimonier == '' ? '' : 'Solomon Yalew: ',
                  ),
                  Divider(
                    color: BranaColor.DividerColor,
                    thickness: 1,
                  ),
                ],
              )),
          hasMore
              ? SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: _loadMore,
                        child: SizedBox(
                          width: 105,
                          child: Row(
                            children: [
                              Text(
                                "Show More",
                                style: TextStyle(
                                  color: BranaColor.BookTitleColor,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: BranaColor.BookTitleColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: _Unload,
                        child: SizedBox(
                          width: 105,
                          child: Row(
                            children: [
                              Text(
                                "Show Less",
                                style: TextStyle(
                                  color: BranaColor.BookTitleColor,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_up,
                                color: BranaColor.BookTitleColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
