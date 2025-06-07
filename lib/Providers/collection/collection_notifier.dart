import 'package:brana/Providers/collection/collection_provider.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/models/shelve_model/shelve.dart';
import 'collection_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollectionNotifier extends Notifier<AsyncValue<CollectionState>> {
  CollectionRepository get _repository => ref.read(collectionRepositoryProvider);

  @override
  AsyncValue<CollectionState> build() {
    loadAllCollections(); // async call
    return const AsyncValue.loading();
  }

  Future<void> loadAllCollections() async {
    state = const AsyncValue.loading();

    try {
      final shelve = await _repository.getShelveList();
      state = AsyncValue.data(CollectionState(shelve: shelve));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

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
    print("Error adding shelve: $e");
    print("Stack trace: $st");
    // Restore original state on error
    state = AsyncData(backupState);
    state = AsyncValue.error(e, st);
  }
}

Future<void> removeBookFromShelve(String shelveId) async {
  final current = state;

  if (current is! AsyncData || current.value == null) return;

  final backupState = current.value!;

  try {
    // Optimistically remove the shelve
    final updatedShelveList = List<Shelve>.from(backupState.shelve ?? [])
      ..removeWhere((shelve) => shelve.shelveId == shelveId);

    state = AsyncData(backupState.copyWith(shelve: updatedShelveList));

    // Perform the actual deletion
    await _repository.removeBookFromShelve(shelveId);
  } catch (e, st) {
    // Restore the original state on error
    state = AsyncData(backupState);
    state = AsyncValue.error(e, st);
  }
}
}