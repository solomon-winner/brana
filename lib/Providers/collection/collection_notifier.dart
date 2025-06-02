import 'package:brana/Providers/collection/collection_provider.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';
import 'collection_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollectionNotifier extends Notifier<AsyncValue<CollectionState>> {

  @override
  AsyncValue<CollectionState> build() {
  //  loadInitialData(); 
    return const AsyncValue.loading();
    // return const CollectionState(
    //   books: [],
    //   favorites: {},
    //   isLoading: true,
    //   error: null,
    // );
  }

    CollectionRepository get _repository => ref.read(collectionRepositoryProvider);

      Future<void> getWishListItems() async{
        try {
          
        } catch (e) {
          
        }

  }
  Future<void> addOrRemoveWishList(String bookId)async {

  }
  Future<void> addOrRemoveShelveList({
    required String bookId,
    required String bookCount,
    required double price,
    required String to,
    required String isPaid,
  }) async {

  }
  Future<void> removeBookFromShelve(String shelveId) async {

  }
  Future<void> payForShelve(String shelveId) async {

  }
  Future<void> payForAllOnce()async {
}
}
