import 'package:brana/Providers/collection/collection_provider.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
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
}

