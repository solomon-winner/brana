import 'package:brana/Providers/books/book_provider.dart';
import 'book_state.dart';
import 'package:brana/data/repositories/book_repository/book_repository.dart';
import 'package:brana/models/book_model/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookNotifier extends Notifier<AsyncValue<BookState>> {

  @override
  AsyncValue<BookState> build() {
   loadInitialData(); 
    return const AsyncValue.loading();
    // return const BookState(
    //   books: [],
    //   favorites: {},
    //   isLoading: true,
    //   error: null,
    // );
  }
    BookRepository get _repository => ref.read(bookRepositoryProvider);

  Future<void> loadInitialData() async {
    print('Loading initial data...');
    state = const AsyncValue.loading();
    
    try {
      final results = await Future.wait([
        _repository.fetchBooks(),
         _repository.getFavorites(),
      ]);
      final books = results[0] as List<Book>;
final favorites = results.length > 1 
    ? results.elementAt(1) as Set<int> 
    : <int>{}; 

       print('Favorites: ${results[1]}');
      state = AsyncValue.data(
        BookState(
          books: _mergeFavorites(books, favorites),
          favorites: favorites,
        ),
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  List<Book> _mergeFavorites(List<Book> books, Set<int> favorites) {
    return books.map((book) => book.copyWith(
      isFavourite: favorites.contains(book.id),
    )).toList();
  }

Future<void> toggleFavorite(int bookId) async {
  final current = state;
  if (current is! AsyncData) return;

  // Optimistically update the favorite state
  final oldState = current.value!;
  final updatedBooks = oldState.books.map((book) {
    if (book.id == bookId) {
      return book.copyWith(isFavourite: !book.isFavourite);
    }
    return book;
  }).toList();

  final updatedFavorites = Set<int>.from(oldState.favorites);
  if (updatedFavorites.contains(bookId)) {
    updatedFavorites.remove(bookId);
  } else {
    updatedFavorites.add(bookId);
  }

  // Emit updated state immediately for smooth UX
  state = AsyncValue.data(BookState(
    books: updatedBooks,
    favorites: updatedFavorites,
  ));

  try {
    await _repository.toggleFavorite(bookId);
    final realFavorites = await _repository.getFavorites();

    // Correct any discrepancy with backend
    state = AsyncValue.data(BookState(
      books: _mergeFavorites(updatedBooks, realFavorites),
      favorites: realFavorites,
    ));
  } catch (e, stack) {
    state = AsyncValue.error(e, stack);
  }
}

}

