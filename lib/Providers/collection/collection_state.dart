import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:brana/models/shelve_model/shelve.dart';

class CollectionState {
  final List<UserCollection>? wishlist;
  final List<UserCollection>? recomended;
  final List<UserCollection>? saved;
  final List<UserCollection>? favourite;
  final List<Shelve>? shelve;

  const CollectionState({
     this.wishlist,
     this.recomended,
     this.saved,
     this.favourite,
     this.shelve,
  });

  CollectionState copyWith({
    List<UserCollection>? wishlist,
    List<UserCollection>? recomended,
    List<UserCollection>? saved,
    List<UserCollection>? favourite,
    List<Shelve>? shelve,
  }) {
    return CollectionState(
      wishlist: wishlist ?? this.wishlist,
      recomended: recomended ?? this.recomended,
      saved: saved ?? this.saved,
      favourite: favourite ?? this.favourite,
      shelve: shelve ?? this.shelve,
    );
  }
}