import 'package:brana/Providers/collection/collection_provider.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/models/shelve_model/shelve.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:brana/utils/operation_type.dart';
import 'collection_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollectionNotifier extends Notifier<AsyncValue<CollectionState>> {
  CollectionRepository get _repository => ref.read(collectionRepositoryProvider);

  @override
  AsyncValue<CollectionState> build() {
    // _loadAllCollections(); // async call
    return const AsyncValue.loading();
  }

  // Future<void> _loadAllCollections() async {
  //   try {
  //     final wishlist = await _repository.getWishListItems();
  //     // final recommended = await _repository.getRecommendedItems();
  //     // final saved = await _repository.getSavedItems();
  //     // final favourite = await _repository.getFavouriteItems();

  //     state = AsyncValue.data(
  //       CollectionState(
  //         wishlist: wishlist,
  //         recomended: [],
  //         saved: [],
  //         favourite: [],
  //       ),
  //     );
  //   } catch (e, st) {
  //     state = AsyncValue.error(e, st);
  //   }
  // }

  // Future<void> refreshCollections() async {
  //   state = const AsyncValue.loading();
  //   await _loadAllCollections();
  // }


Future<void> addShelveList({
  required String bookId,
  required int bookCount,
  required String to,
  required bool isPaid,
  required String title,
  required String img,
  required String author,
  required double price,
}) async {
  final current = state;

  if (current is! AsyncData || current.value == null) return;

  //  Backup current state
  final backupState = current.value!;

  try {
    // Optimistically update the shelve list
    final updatedShelveList = List<Shelve>.from(backupState.shelve ?? [])..add(
      Shelve(
        shelveId: '',
        title: title,
        img: img,
        author: author, 
        bookId: bookId,
        bookCount: bookCount,
        price: price,
        to: to,
        isPaied: isPaid,
      ),
    );

    state = AsyncData(backupState.copyWith(shelve: updatedShelveList));

    // Make the real network call
    final newShelve = await _repository.addShelveList(
      bookId: bookId,
      bookCount: bookCount,
      to: to,
      isPaid: isPaid,
    );

    // Replace the optimistic one with the real one
    final cleanedList = List<Shelve>.from(backupState.shelve ?? [])..add(newShelve);
    state = AsyncData(backupState.copyWith(shelve: cleanedList));
  } catch (e, st) {
    // Restore original state on error
    state = AsyncData(backupState);
    state = AsyncValue.error(e, st);
  }
}


  // Future<void> removeBookFromShelve(String shelveId) async {
  //   try {
  //     await _repository.removeBookFromShelve(shelveId);
  //     // await _refreshSavedOnly();
  //   } catch (e, st) {
  //     state = AsyncValue.error(e, st);
  //   }
  // }

  // Future<void> payForShelve(String shelveId) async {
  //   try {
  //     await _repository.payForShelve(shelveId);
  //     // await _refreshSavedOnly();
  //   } catch (e, st) {
  //     state = AsyncValue.error(e, st);
  //   }
  // }

  // Future<void> payForAllOnce() async {
  //   try {
  //     await _repository.payForAllOnce();
  //     // await _refreshSavedOnly();
  //   } catch (e, st) {
  //     state = AsyncValue.error(e, st);
  //   }
  // }

  // Helpers to update only part of the state
  // Future<void> _refreshWishlistOnly() async {
  //   final current = state.value;
  //   if (current != null) {
  //     final updated = await _repository.getWishListItems();
  //     state = AsyncValue.data(current.copyWith(wishlist: updated));
  //   }
  // }

  // Future<void> _refreshSavedOnly() async {
  //   final current = state.value;
  //   if (current != null) {
  //     final updated = await _repository.getSavedItems();
  //     state = AsyncValue.data(current.copyWith(saved: updated));
  //   }
  // }

  // Future<void> _refreshFavouriteOnly() async {
  //   final current = state.value;
  //   if (current != null) {
  //     final updated = await _repository.getFavouriteItems();
  //     state = AsyncValue.data(current.copyWith(favourite: updated));
  //   }
  // }
}
