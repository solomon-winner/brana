import 'package:flutter/material.dart';

class trendingTabs extends StatefulWidget {
  const trendingTabs({super.key});

  @override
  State<trendingTabs> createState() => _trendingTabsState();
}

class _trendingTabsState extends State<trendingTabs> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              child: Text("Fiction"),),
            )
        ],
      ),
    );
  }
}