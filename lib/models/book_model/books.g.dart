// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Book _$BookFromJson(Map<String, dynamic> json) => _Book(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String,
      img: json['img'] as String,
      rating: (json['rating'] as num).toDouble(),
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      availableBooks: (json['availableBooks'] as num).toInt(),
      language: json['language'] as String,
      pages: (json['pages'] as num).toInt(),
      year: json['year'] as String,
      publisher: json['publisher'] as String,
      isbn: json['isbn'] as String,
      isFavourite: json['isFavourite'] as bool,
      isPopular: json['isPopular'] as bool,
      isRecommended: json['isRecommended'] as bool,
      isBestSeller: json['isBestSeller'] as bool,
      isTrending: json['isTrending'] as bool,
      isOnSale: json['isOnSale'] as bool,
      isDiscounted: json['isDiscounted'] as bool,
      discount: (json['discount'] as num).toDouble(),
      discountedPrice: (json['discountedPrice'] as num).toDouble(),
      isComingSoon: json['isComingSoon'] as bool,
      isPreOrder: json['isPreOrder'] as bool,
      isSoldOut: json['isSoldOut'] as bool,
      isApproaved: json['isApproaved'] as bool,
      isBanned: json['isBanned'] as bool,
      isBlocked: json['isBlocked'] as bool,
      isReported: json['isReported'] as bool,
      isDeactivated: json['isDeactivated'] as bool,
    );

Map<String, dynamic> _$BookToJson(_Book instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'img': instance.img,
      'rating': instance.rating,
      'category': instance.category,
      'price': instance.price,
      'description': instance.description,
      'availableBooks': instance.availableBooks,
      'language': instance.language,
      'pages': instance.pages,
      'year': instance.year,
      'publisher': instance.publisher,
      'isbn': instance.isbn,
      'isFavourite': instance.isFavourite,
      'isPopular': instance.isPopular,
      'isRecommended': instance.isRecommended,
      'isBestSeller': instance.isBestSeller,
      'isTrending': instance.isTrending,
      'isOnSale': instance.isOnSale,
      'isDiscounted': instance.isDiscounted,
      'discount': instance.discount,
      'discountedPrice': instance.discountedPrice,
      'isComingSoon': instance.isComingSoon,
      'isPreOrder': instance.isPreOrder,
      'isSoldOut': instance.isSoldOut,
      'isApproaved': instance.isApproaved,
      'isBanned': instance.isBanned,
      'isBlocked': instance.isBlocked,
      'isReported': instance.isReported,
      'isDeactivated': instance.isDeactivated,
    };
