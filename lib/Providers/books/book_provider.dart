import 'package:brana/Providers/books/book_notifier.dart';
import 'package:brana/Providers/books/book_state.dart';
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
final sharedPreferencesProvider = FutureProvider<SharedPreferences>((_) async {
  return await SharedPreferences.getInstance();
});

// Repository Provider
final bookRepositoryProvider = Provider<BookRepository>((ref) {
  return BookRepositoryImpl(
    ref.watch(sharedPreferencesProvider).requireValue,
    ref.watch(dioProvider),
  );
});

// Shared Preferences Provider


// Dio Provider
final dioProvider = Provider<Dio>((_) {
  return Dio(BaseOptions(baseUrl: 'https://api.example.com'));
});

// State Notifier Provider
final bookNotifierProvider = NotifierProvider<BookNotifier, AsyncValue<BookState>>(BookNotifier.new);