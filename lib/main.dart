import 'package:brana/Providers/book_provider.dart';
import 'package:brana/components/home/bodyContainer.dart';
import 'package:brana/pages/details_page.dart';
import 'package:brana/pages/favourite.dart';
import 'package:brana/pages/mainScaffold.dart';
import 'package:brana/pages/profile_page.dart';
import 'package:brana/pages/setting_page.dart';
import 'package:brana/pages/shelves.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:brana/pages/home_page.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: BranaColor.light_background,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
