import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:brana/domain/repositories/book_repository.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookRepository repository;

  BookBloc(this.repository) : super(const BookState.initial()) {
    on<FetchBooks>(_onFetchBooks);
    on<ToggleLike>(_onToggleLike);
  }

  Future<void> _onFetchBooks(
    FetchBooks event,
    Emitter<BookState> emit,
  ) async {
    emit(const BookState.loading());
    try {
      final books = await repository.getBooks();
      emit(BookState.loaded(books));
    } catch (e) {
      emit(BookState.error(e.toString()));
    }
  }

  Future<void> _onToggleLike(
    ToggleLike event,
    Emitter<BookState> emit,
  ) async {
    // Implement like toggle logic
  }
}