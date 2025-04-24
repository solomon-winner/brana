import 'package:brana/Providers/dio_provider.dart';
import 'package:brana/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:brana/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:brana/Providers/shared_preference.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final secureStorage = const FlutterSecureStorage();
  final token = await secureStorage.read(key: 'auth_token');

  runApp(ProviderScope(
    overrides: [
      secureStorageProvider.overrideWithValue(secureStorage),
      sharedPreferencesProvider.overrideWithValue(prefs),],
    child: MyApp(isLoggedIn: token != null)) );
}



class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,

        home: isLoggedIn? HomePage(): LoginScreen(),
    );
  }
}
