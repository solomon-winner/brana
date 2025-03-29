import 'package:brana/Providers/books/book_provider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:brana/Blocs/bookBloc/book_bloc.dart';
// import 'package:brana/Blocs/bookBloc/book_event.dart'; 
import 'package:brana/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'injection_controller.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // init();
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [sharedPreferencesProvider.overrideWithValue(prefs),],
    child: MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,

        home: HomePage(),
    );
  }
}
