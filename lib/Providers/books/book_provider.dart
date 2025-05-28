import 'package:brana/Providers/books/book_notifier.dart';
import 'package:brana/Providers/books/book_state.dart';
import 'package:brana/data/datasources/book_remote_data_source.dart';
import 'package:brana/data/repositories/book_repository/book_repository.dart';
import 'package:brana/data/repositories/book_repository/book_repository_impl.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/Providers/shared_preference.dart';
import 'package:brana/Providers/dio_provider.dart';

final bookRemoteDataSourceProvider = Provider<BookRemoteDataSource>((ref){
  return BookRemoteDataSourceImpl(ref.watch(dioProvider));//
});

final collectionRemoteDataSourceProvider = Provider<BookRemoteDataSource>((ref){
  return BookRemoteDataSourceImpl(ref.watch(dioProvider));//
});

// Repository Provider
final bookRepositoryProvider = Provider<BookRepository>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return BookRepositoryImpl(ref.watch(bookRemoteDataSourceProvider), prefs);
});

// final WishListProvider = Provider<CollectionRepository>((ref) {
//   // final prefs = ref.watch(sharedPreferencesProvider);
//   return CollectionRepositoryImpl(ref.watch(bookRemoteDataSourceProvider), prefs);
// });

final bookNotifierProvider = NotifierProvider<BookNotifier, AsyncValue<BookState>>(BookNotifier.new);