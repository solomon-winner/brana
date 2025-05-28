import 'package:brana/models/user_collection_model/user_collection.dart';

class CollectionState {
  final List<UserCollection> wishlist;
  final List<UserCollection> recomended;
  final List<UserCollection> saved;
  final List<UserCollection> favourite;


  const CollectionState({
    required this.wishlist,
    required this.recomended,
    required this.saved,
    required this.favourite,
  });

  CollectionState copyWith({
    List<UserCollection>? wishlist,
    List<UserCollection>? recomended,
    List<UserCollection>? saved,
    List<UserCollection>? favourite,

  }) {
    return CollectionState(
      wishlist: wishlist ?? this.wishlist,
      recomended: recomended ?? this.recomended,
      saved: saved ?? this.saved,
      favourite: favourite ?? this.favourite,
    );
  }
}