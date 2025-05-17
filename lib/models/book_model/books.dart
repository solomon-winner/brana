import 'package:freezed_annotation/freezed_annotation.dart';

part 'books.freezed.dart';
part 'books.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    required String id,
    required String title,
    required String author,
    required String img,
    required double rating,
    required String category,
    required double price,
    required String description,
    required int availableBooks,
    required String language,
    required int pages,
    required String year,
    required String publisher,
    required String isbn,
    required bool isFavourite,
    required bool isPopular,
    required bool isRecommended,
    required bool isWishlist,
    required bool isSaved,
    required bool isBestSeller,
    required bool isTrending,
    required bool isOnSale,
    required bool isDiscounted,
    required double discount,
    required double discountedPrice,
    required bool isComingSoon,
    required bool isPreOrder,
    required bool isSoldOut,
    required bool isApproaved,
    required bool isBanned,
    required bool isBlocked,
    required bool isReported,
    required bool isDeactivated,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}