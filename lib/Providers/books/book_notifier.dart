import 'package:brana/Providers/books/book_provider.dart';
import 'package:brana/Providers/collection/collection_provider.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'book_state.dart';
import 'package:brana/data/repositories/book_repository/book_repository.dart';
// import 'package:brana/models/book_model/books.dart';
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
    CollectionRepository get _collection_repository => ref.read(collectionRepositoryProvider);

  Future<void> loadInitialData() async {
    state = const AsyncValue.loading();
    
    try {
      final books = await _repository.fetchBooks();
      state = AsyncValue.data(BookState(books: books));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  // List<Book> _mergeFavorites(List<Book> books, Set<int> favorites) {
  //   return books.map((book) => book.copyWith(
  //     isFavourite: favorites.contains(book.id),
  //   )).toList();
  // }

Future<void> toggleFavorite(String bookId) async {
  final current = state;
  if (current is! AsyncData || current.value == null) return;

  // Store original state for potential rollback
  final originalBooks = current.value!.books;
  
  // Create optimistic update
  final updatedBooks = originalBooks.map((book) {
    return book.id == bookId 
      ? book.copyWith(isFavourite: !book.isFavourite)
      : book;
  }).toList();

  // Immediately show optimistic update
  state = AsyncValue.data(BookState(books: updatedBooks));

  try {
    // Find the updated book state
    final updatedBook = updatedBooks.firstWhere(
      (book) => book.id == bookId,
      orElse: () => throw Exception("Book $bookId not found")
    );

    // Make API call
    await _repository.toggleFavorite(
      bookId,
      updatedBook.isFavourite ? "add" : "remove"
    );

    // Optional: Refresh from server to confirm
    // final freshState = await _repository.getBooks();
    // state = AsyncValue.data(freshState);

  } catch (e, stack) {
    // Rollback to original state on error
    state = AsyncValue.data(BookState(books: originalBooks));
    
    // Consider adding error reporting here
    print('Favorite toggle failed: $e\n$stack');
    
    // Re-throw if using error boundaries
    throw Exception('Failed to toggle favorite: $e');
  }
}

Future<void> addOrRemoveWishlist(String bookId) async {
  final current = state;

  if (current is! AsyncData || current.value == null) return;

  final originalBooks = current.value!.books;

  final updatedBooks = originalBooks.map((book) {
    return book.id == bookId 
    ? book.copyWith(isWishlist: !book.isWishlist)
    : book;
  }).toList();

  state = AsyncValue.data(BookState(books: updatedBooks));

  try {
    final updatedBook = updatedBooks.firstWhere(
      (book) => book.id == bookId,
      orElse: () => throw Exception("Book $bookId not found!")
    );

  await _collection_repository.addOrRemoveWishList(
      bookId,
      updatedBook.isWishlist ? "add" : "remove"
    );
    // await _repos
  } catch (e, stack) {
    state = AsyncValue.data(BookState(books: originalBooks));
    print('Wishlist toggle failed: $e\n$stack');
    throw Exception("Failed to add or remove a book to wishlist: $e");
  }
}

}

