import 'book_state.dart';
import 'package:brana/data/repositories/book_repository.dart';
import 'package:brana/models/book_model/books.dart';
import 'package:state_notifier/state_notifier.dart';

class BookNotifier extends StateNotifier<BookState> {
  final BookRepository _repository;

  BookNotifier(this._repository) : super(const BookState(
    books: [],
    favorites: {},
    isLoading: true,
  )) {
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    try {
      final results = await Future.wait([
        _repository.fetchBooks(),
        _repository.getFavorites(),
      ]);

      final books = results[0] as List<Book>;
      final favorites = results[1] as Set<int>;
      
      state = state.copyWith(
        books: _mergeFavorites(books, favorites),
        favorites: favorites,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  List<Book> _mergeFavorites(List<Book> books, Set<int> favorites) {
    return books.map((book) => book.copyWith(
      isFavourite: favorites.contains(book.id),
    )).toList();
  }

  Future<void> toggleFavorite(int bookId) async {
    try {
      await _repository.toggleFavorite(bookId);
      final favorites = await _repository.getFavorites();
      
      state = state.copyWith(
        books: _mergeFavorites(state.books, favorites),
        favorites: favorites,
      );
    } catch (e) {
      state = state.copyWith(error: 'Failed to update favorite');
    }
  }
}