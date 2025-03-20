import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brana/Blocs/bookBloc/book_bloc.dart';
import 'package:brana/Blocs/bookBloc/book_event.dart'; 
import 'package:brana/pages/home_page.dart';
import 'injection_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BookBloc>()..add(const FetchBooks()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
