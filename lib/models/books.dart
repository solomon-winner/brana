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
  final bool isFavorite;
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
    required this.isFavorite,
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

      Book copyWith({
        int? id,
        String? author,
        String? img,
        double? rating,
        String? category,
        double? price,
        String? description,
        int? availableBooks,
        String? language,
        int? pages,
        String? year,
        String? publisher,
        String? isbn,
        bool? isFavorite,
        bool? isPopular,
        bool? isRecomended,
        bool? isBestSeller,
        bool? isTrending,
        bool? isOnSale,
        bool? isDiscounted,
        double? discount,
        double? discountedPrice,
        bool? isComingSoon,
        bool? isPreOrdered,
        bool? isSoldOut,
        bool? isApproaved,
        bool? isBanned,
        bool? isBlocked,
        bool? isReported,
        bool? isDeactivated,
    }) => 
        Book(
          id: id ?? this.id,
          title: title ?? this.title,
          author: author??  this.author,
          img: img ??  this.img,
          rating:rating ?? this.rating,
          category: category ?? this.category,
          price: price ?? this.price,
          description: description ?? this.description,
          availableBooks: availableBooks ?? this.availableBooks,
          language: language ?? this.language,
          pages: pages ?? this.pages,
          year: year ?? this.year,
          publisher: publisher ?? this.publisher,
          isbn: isbn ?? this.isbn,
          isFavorite: isFavorite ?? this.isFavorite,
          isPopular: isPopular ?? this.isPopular,
          isRecomended: isRecomended ?? this.isRecomended,
          isBestSeller: isBestSeller ?? this.isBestSeller,
          isTrending: isTrending ??  this.isTrending,
          isOnSale: isOnSale ?? this.isOnSale,
          isDiscounted: isDiscounted ?? this.isDiscounted,
          discount: discount ?? this.discount,
          discountedPrice: discountedPrice ?? this.discountedPrice,
          isComingSoon: isComingSoon ?? this.isComingSoon,
          isPreOrdered: isPreOrdered ?? this.isPreOrdered,
          isSoldOut: isSoldOut ?? this.isSoldOut,
          isApproaved: isApproaved ?? this.isApproaved,
          isBanned: isBanned ?? this.isBanned,
          isBlocked: isBlocked ?? this.isBlocked,
          isReported: isReported ?? this.isReported,
          isDeactivated: isDeactivated ?? this.isDeactivated,

        );

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
      isFavorite: json['isFavorite'],
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
  Map<String, dynamic> toJson() => {
           "id": id,
          "title": title,
          "author": author,
          "img": img,
          "rating":rating,
          "category": category,
          "price": price,
          "description": description,
          "availableBooks": availableBooks,
          "language": language,
          "pages": pages,
          "year": year,
          "publisher": publisher,
          "isbn": isbn,
          "isFavorite": isFavorite,
          "isPopular": isPopular,
          "isRecomended": isRecomended,
          "isBestSeller": isBestSeller,
          "isTrending": isTrending,
          "isOnSale": isOnSale,
          "isDiscounted": isDiscounted,
          "discount": discount,
          "discountedPrice": discountedPrice,
          "isComingSoon": isComingSoon,
          "isPreOrdered": isPreOrdered,
          "isSoldOut": isSoldOut,
          "isApproaved": isApproaved,
          "isBanned": isBanned,
          "isBlocked": isBlocked,
          "isReported": isReported,
          "isDeactivated": isDeactivated,
   
  };

}