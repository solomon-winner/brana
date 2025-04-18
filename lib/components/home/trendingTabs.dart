import 'package:brana/utils/colors.dart';
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
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),
              child: Text("Fiction"),),
            ),
                      Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
                style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),
              child: Text("Entairtainment"),),
            ),
                      Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("Horror"),),
            ),
                      Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("History"),),
            ),
                      Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("politics"),),
            ),
                      Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("Economics"),),
            ),
                      Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
               style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),             
              child: Text("Military"),),
            ),
                                  Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("Biography"),),
            ),
                                  Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("Comic books"),),
            ),
                                  Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: FilledButton(
              onPressed: (){},
              style:FilledButton.styleFrom(
                backgroundColor: BranaColor.dark_background,
                foregroundColor: BranaColor.WhiteColor
              ),              
              child: Text("Sci-Fi"),),
            )
        ],
      ),
    );
  }
}