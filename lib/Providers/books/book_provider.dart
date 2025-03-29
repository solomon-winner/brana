import 'package:brana/Providers/books/book_notifier.dart';
import 'package:brana/Providers/books/book_state.dart';
import 'package:brana/data/datasources/book_remote_data_source.dart';
import 'package:brana/data/repositories/book_repository.dart';
import 'package:brana/data/repositories/book_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final bookRemoteDataSourceProvider = Provider<BookRemoteDataSource>((ref){
  return BookRemoteDataSourceImpl(ref.watch(dioProvider));
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('SharedPreferences not overridden');
});

// Repository Provider
final bookRepositoryProvider = Provider<BookRepository>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return BookRepositoryImpl(ref.watch(bookRemoteDataSourceProvider), prefs);
});


// Shared Preferences Provider


// Dio Provider
final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(
    baseUrl: 'https://api.example.com',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
  ))
    ..interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
      responseHeader: true,
      
   ));
});
// State Notifier Provider
final bookNotifierProvider = NotifierProvider<BookNotifier, AsyncValue<BookState>>(BookNotifier.new);