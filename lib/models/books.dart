import 'dart:ffi';

class Book {
  final int id;
  final String title;
  final String author;
  final String img;
  final double rating;
  final String category;
  final double price;
  final String description;
  final int availableBooks;
  final String language;
  final int pages;
  final String year;
  final String publisher;
  final String isbn;
  final bool isFavourite;
  final bool isPopular;
  final bool isRecomended;
  final bool isBestSeller;
  final bool isTrending;
  final bool isOnSale;
  final bool isDiscounted;
  final double discount;
  final double discountedPrice;
  final bool isComingSoon;
  final bool isPreOrdered;
  final bool isSoldOut;
  final bool isApproaved;
  final bool isBanned;
  final bool isBlocked;
  final bool isReported;
  final bool isDeactivated;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.img,
    required this.rating,
    required this.category,
    required this.price,
    required this.description,
    required this.availableBooks,
    required this.language,
    required this.pages,
    required this.year,
    required this.publisher,
    required this.isbn,
    required this.isFavourite,
    required this.isPopular,
    required this.isRecomended,
    required this.isBestSeller,
    required this.isTrending,
    required this.isOnSale,
    required this.isDiscounted,
    required this.discount,
    required this.discountedPrice,
    required this.isComingSoon,
    required this.isPreOrdered,
    required this.isSoldOut,
    required this.isApproaved,
    required this.isBanned,
    required this.isBlocked,
    required this.isReported,
    required this.isDeactivated,


  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      img: json['img'],
      rating: json['rating'].toDouble(),
      category: json['category'],
      price: json['price'].toDouble(),
      description: json['description'],
      availableBooks: json['availableBooks'],
      language: json['language'],
      pages: json['pages'],
      year: json['year'],
      publisher: json['publisher'],
      isbn: json['isbn'],
      isFavourite: json['isFavourite'],
      isPopular: json['isPopular'],
      isRecomended: json['isRecomended'],
      isBestSeller: json['isBestSeller'],
      isTrending: json['isTrending'],
      isOnSale: json['isOnSale'],
      isDiscounted: json['isDiscounted'],
      discount: json['discount'].toDouble(),
      discountedPrice: json['discountedPrice'].toDouble(),
      isComingSoon: json['isComingSoon'],
      isPreOrdered: json['isPreOrdered'],
      isSoldOut: json['isSoldOut'],
      isApproaved: json['isApproaved'],
      isBanned: json['isBanned'],
      isBlocked: json['isBlocked'],
      isReported: json['isReported'],
      isDeactivated: json['isDeactivated']
    );
  }

}