import 'package:brana/Providers/books/book_notifier.dart';
import 'package:brana/Providers/books/book_state.dart';
import 'package:brana/data/datasources/book_remote_data_source.dart';
import 'package:brana/data/repositories/book_repository.dart';
import 'package:brana/data/repositories/book_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/book_service.dart';
import 'package:brana/models/book_model/books.dart';

// final bookServiceProvider = Provider((ref) => BookService());

// final bookListProvider = FutureProvider<List<Book>>((ref) async {
//   final bookService = ref.read(bookServiceProvider);
//   return bookService.fetchBooks();
// });

final bookRemoteDataSourceProvider = Provider<BookRemoteDataSource>((ref){
  return BookRemoteDataSourceImpl(ref.watch(dioProvider));
});

final sharedPreferencesProvider = FutureProvider<SharedPreferences>((_) async {
  return await SharedPreferences.getInstance();
});

// Repository Provider
final bookRepositoryProvider = Provider<BookRepository>((ref) {
  return BookRepositoryImpl(
    ref.watch(bookRemoteDataSourceProvider),
    ref.watch(sharedPreferencesProvider).requireValue,
  );
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
      requestBody: true,
      responseBody: true,
    ));
});
// State Notifier Provider
final bookNotifierProvider = NotifierProvider<BookNotifier, AsyncValue<BookState>>(BookNotifier.new);