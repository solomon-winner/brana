import 'package:brana/Providers/collection/collection_provider.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:brana/utils/operation_type.dart';
import 'collection_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollectionNotifier extends Notifier<AsyncValue<CollectionState>> {
  CollectionRepository get _repository => ref.read(collectionRepositoryProvider);

  @override
  AsyncValue<CollectionState> build() {
    _loadAllCollections(); // async call
    return const AsyncValue.loading();
  }

  Future<void> _loadAllCollections() async {
    try {
      final wishlist = await _repository.getWishListItems();
      // final recommended = await _repository.getRecommendedItems();
      // final saved = await _repository.getSavedItems();
      // final favourite = await _repository.getFavouriteItems();

      state = AsyncValue.data(
        CollectionState(
          wishlist: wishlist,
          recomended: [],
          saved: [],
          favourite: [],
        ),
      );
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> refreshCollections() async {
    state = const AsyncValue.loading();
    await _loadAllCollections();
  }



  Future<void> addOrRemoveShelveList({
    required String bookId,
    required int bookCount,
    required String to,
    required bool isPaid,
    required OperationType type,
  }) async {
    try {
      await _repository.addOrRemoveShelveList(
         bookId,
         bookCount,
         to,
        isPaid,
        type
      );
      // await _refreshSavedOnly();
    } catch (e, st) {
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
