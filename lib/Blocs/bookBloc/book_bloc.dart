import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brana/Blocs/bookBloc/book_event.dart';
import 'package:brana/Blocs/bookBloc/book_state.dart';
import 'package:brana/data/repositories/book_repository.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookRepository repository;

  BookBloc(this.repository) : super(const BookState.initial()) {
    on<FetchBooks>(_onFetchBooks);
  }

  Future<void> _onFetchBooks(FetchBooks event, Emitter<BookState> emit) async {
    emit(const BookState.loading());
    try {
      final books = await repository.fetchBooks();
      emit(BookState.loaded(books));
    } catch (e) {
      emit(BookState.error(e.toString()));
    }
  }
}
