import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_collection.freezed.dart';
part 'user_collection.g.dart';

@freezed
abstract class UserCollection with _$UserCollection {
  const factory UserCollection({
    required String bookId,
    required String title,
    required String img,
    required String author,
    double? price,      // Only present for wishlist
    String? reason,     // Only present for recommended
  }) = _UserCollection;

  factory UserCollection.fromJson(Map<String, dynamic> json) =>
      _$UserCollectionFromJson(json);
}
