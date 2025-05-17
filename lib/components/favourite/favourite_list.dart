// import 'package:brana/Providers/books/book_state.dart';
// import 'package:brana/components/home/bookList_item.dart';
// import 'package:brana/models/book_model/books.dart';
// import 'package:brana/pages/details_page.dart';
// import 'package:brana/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../providers/books/book_provider.dart';

// class FavouriteList extends ConsumerWidget {

//   const FavouriteList({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     SharedPreferences _prefs;
//     // Watch the provider
//     final asyncState = ref.watch(bookNotifierProvider);
//     return RefreshIndicator(
//       onRefresh: () async => ref.read(bookNotifierProvider.notifier).loadInitialData(),
//       child: asyncState.when(
//         loading: () => const Center(child: CircularProgressIndicator()),
// error: (error, stack) {
//   print('Error: $error');
//   print('Stack trace: $stack');
//   return Center(child: Text('Error: $error'));
// },
//         data: (state) => _FavouriteListView(state: state)
//       ),
//     );
//   }
// }

// class _FavouriteListView extends StatelessWidget {
//    final BookState state;
//    const _FavouriteListView({required this.state});

//   @override
//   Widget build(BuildContext context) {
//         final favoriteBooks = state.books.where((book) => state.favorites.contains(book.id)).toList();
//         if (favoriteBooks.isEmpty) {
//       return const Center(
//         child: Text("No favorites yet!"),
//       );
//     }
//     return ListView.builder(
//       physics: const AlwaysScrollableScrollPhysics(),
//       itemCount: favoriteBooks.length,
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context, index) {
//       final book = favoriteBooks[index];
      
//       return BookListItem(book: book);
//     });
//   }
// }