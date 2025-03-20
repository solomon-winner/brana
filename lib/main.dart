import 'package:brana/Blocs/bookBloc/bookBloc.dart';
import 'package:brana/Blocs/bookBloc/bookBloc.dart';
import 'package:brana/components/home/bodyContainer.dart';
import 'package:brana/pages/details_page.dart';
import 'package:brana/pages/favourite.dart';
import 'package:brana/pages/profile_page.dart';
import 'package:brana/pages/setting_page.dart';
import 'package:brana/pages/shelves.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:brana/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:brana/components/sideBar.dart';


final GetIt getIt = GetIt.instance;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: BranaColor.light_background,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => GetIt.I<BookBloc>(),
        child: HomePage(),
      ) 
    );
  }
}
