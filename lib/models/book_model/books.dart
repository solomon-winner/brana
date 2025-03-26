// class Book {
//   final int id;
//   final String title;
//   final String author;
//   final String img;
//   final double rating;
//   final String category;
//   final double price;
//   final String description;
//   final int availableBooks;
//   final String language;
//   final int pages;
//   final String year;
//   final String publisher;
//   final String isbn;
//    bool isFavourite;
//   final bool isPopular;
//   final bool isRecommended;
//   final bool isBestSeller;
//   final bool isTrending;
//   final bool isOnSale;
//   final bool isDiscounted;
//   final double discount;
//   final double discountedPrice;
//   final bool isComingSoon;
//   final bool isPreOrder;
//   final bool isSoldOut;
//   final bool isApproaved;
//   final bool isBanned;
//   final bool isBlocked;
//   final bool isReported;
//   final bool isDeactivated;

//   Book({
//     required this.id,
//     required this.title,
//     required this.author,
//     required this.img,
//     required this.rating,
//     required this.category,
//     required this.price,
//     required this.description,
//     required this.availableBooks,
//     required this.language,
//     required this.pages,
//     required this.year,
//     required this.publisher,
//     required this.isbn,
//     required this.isFavourite,
//     required this.isPopular,
//     required this.isRecommended,
//     required this.isBestSeller,
//     required this.isTrending,
//     required this.isOnSale,
//     required this.isDiscounted,
//     required this.discount,
//     required this.discountedPrice,
//     required this.isComingSoon,
//     required this.isPreOrder,
//     required this.isSoldOut,
//     required this.isApproaved,
//     required this.isBanned,
//     required this.isBlocked,
//     required this.isReported,
//     required this.isDeactivated,


//   });

//   factory Book.fromJson(Map<String, dynamic> json) {
//     return Book(
//       id: json['id'],
//       title: json['title'],
//       author: json['author'],
//       img: json['img'],
//       rating: json['rating'].toDouble(),
//       category: json['category'],
//       price: json['price'].toDouble(),
//       description: json['description'],
//       availableBooks: json['availableBooks'],
//       language: json['language'],
//       pages: json['pages'],
//       year: json['year'],
//       publisher: json['publisher'],
//       isbn: json['isbn'],
//       isFavourite: json['isFavourite'],
//       isPopular: json['isPopular'],
//       isRecommended: json['isRecommended'],
//       isBestSeller: json['isBestSeller'],
//       isTrending: json['isTrending'],
//       isOnSale: json['isOnSale'],
//       isDiscounted: json['isDiscounted'],
//       discount: json['discount'].toDouble(),
//       discountedPrice: json['discountedPrice'].toDouble(),
//       isComingSoon: json['isComingSoon'],
//       isPreOrder: json['isPreOrder'],
//       isSoldOut: json['isSoldOut'],
//       isApproaved: json['isApproaved'],
//       isBanned: json['isBanned'],
//       isBlocked: json['isBlocked'],
//       isReported: json['isReported'],
//       isDeactivated: json['isDeactivated']
//     );
//   }

// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'books.freezed.dart';
part 'books.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    required int id,
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