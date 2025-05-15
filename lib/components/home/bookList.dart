import 'package:brana/Providers/books/book_state.dart';
import 'package:brana/models/book_model/books.dart';
import 'package:brana/pages/details_page.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/books/book_provider.dart';
import "./bookList_item.dart";

class BookList extends ConsumerWidget {

  const BookList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the provider
    final asyncState = ref.watch(bookNotifierProvider);

    return RefreshIndicator(
      onRefresh: () async => ref.read(bookNotifierProvider.notifier).loadInitialData(),
      child: asyncState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
error: (error, stack) {
  print('Error: $error');
  print('Stack trace: $stack');
  return Center(child: Text('Error: $error'));
},
        data: (state) => _BookListView(state: state)
      ),
    );
  }
}

class _BookListView extends StatelessWidget {
   final BookState state;
   const _BookListView({required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: state.books.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
      final book = state.books[index];
      return BookListItem(book: book);
    });
  }
}
