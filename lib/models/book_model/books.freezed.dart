// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Book {
  String get id;
  String get title;
  String get author;
  String get img;
  double get rating;
  String get category;
  double get price;
  String get description;
  int get availableBooks;
  String get language;
  int get pages;
  int get year;
  String get publisher;
  bool get isFavourite;
  bool get isRecommended;
  bool get isWishlist;
  bool get isSaved;
  bool get isBestSeller;
  bool get isTrending;
  bool get isOnSale;
  bool get isDiscounted;
  double get discount;
  double get discountedPrice;
  bool get isComingSoon;
  bool get isPreOrder;
  bool get isSoldOut;
  bool get isApproaved;
  bool get isBanned;
  bool get isReported;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookCopyWith<Book> get copyWith =>
      _$BookCopyWithImpl<Book>(this as Book, _$identity);

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Book &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.availableBooks, availableBooks) ||
                other.availableBooks == availableBooks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.isRecommended, isRecommended) ||
                other.isRecommended == isRecommended) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isBestSeller, isBestSeller) ||
                other.isBestSeller == isBestSeller) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isOnSale, isOnSale) ||
                other.isOnSale == isOnSale) &&
            (identical(other.isDiscounted, isDiscounted) ||
                other.isDiscounted == isDiscounted) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.isComingSoon, isComingSoon) ||
                other.isComingSoon == isComingSoon) &&
            (identical(other.isPreOrder, isPreOrder) ||
                other.isPreOrder == isPreOrder) &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.isApproaved, isApproaved) ||
                other.isApproaved == isApproaved) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        author,
        img,
        rating,
        category,
        price,
        description,
        availableBooks,
        language,
        pages,
        year,
        publisher,
        isFavourite,
        isRecommended,
        isWishlist,
        isSaved,
        isBestSeller,
        isTrending,
        isOnSale,
        isDiscounted,
        discount,
        discountedPrice,
        isComingSoon,
        isPreOrder,
        isSoldOut,
        isApproaved,
        isBanned,
        isReported
      ]);

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, img: $img, rating: $rating, category: $category, price: $price, description: $description, availableBooks: $availableBooks, language: $language, pages: $pages, year: $year, publisher: $publisher, isFavourite: $isFavourite, isRecommended: $isRecommended, isWishlist: $isWishlist, isSaved: $isSaved, isBestSeller: $isBestSeller, isTrending: $isTrending, isOnSale: $isOnSale, isDiscounted: $isDiscounted, discount: $discount, discountedPrice: $discountedPrice, isComingSoon: $isComingSoon, isPreOrder: $isPreOrder, isSoldOut: $isSoldOut, isApproaved: $isApproaved, isBanned: $isBanned, isReported: $isReported)';
  }
}

/// @nodoc
abstract mixin class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) _then) =
      _$BookCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String author,
      String img,
      double rating,
      String category,
      double price,
      String description,
      int availableBooks,
      String language,
      int pages,
      int year,
      String publisher,
      bool isFavourite,
      bool isRecommended,
      bool isWishlist,
      bool isSaved,
      bool isBestSeller,
      bool isTrending,
      bool isOnSale,
      bool isDiscounted,
      double discount,
      double discountedPrice,
      bool isComingSoon,
      bool isPreOrder,
      bool isSoldOut,
      bool isApproaved,
      bool isBanned,
      bool isReported});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._self, this._then);

  final Book _self;
  final $Res Function(Book) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? img = null,
    Object? rating = null,
    Object? category = null,
    Object? price = null,
    Object? description = null,
    Object? availableBooks = null,
    Object? language = null,
    Object? pages = null,
    Object? year = null,
    Object? publisher = null,
    Object? isFavourite = null,
    Object? isRecommended = null,
    Object? isWishlist = null,
    Object? isSaved = null,
    Object? isBestSeller = null,
    Object? isTrending = null,
    Object? isOnSale = null,
    Object? isDiscounted = null,
    Object? discount = null,
    Object? discountedPrice = null,
    Object? isComingSoon = null,
    Object? isPreOrder = null,
    Object? isSoldOut = null,
    Object? isApproaved = null,
    Object? isBanned = null,
    Object? isReported = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      availableBooks: null == availableBooks
          ? _self.availableBooks
          : availableBooks // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _self.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommended: null == isRecommended
          ? _self.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _self.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _self.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestSeller: null == isBestSeller
          ? _self.isBestSeller
          : isBestSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _self.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnSale: null == isOnSale
          ? _self.isOnSale
          : isOnSale // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiscounted: null == isDiscounted
          ? _self.isDiscounted
          : isDiscounted // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountedPrice: null == discountedPrice
          ? _self.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isComingSoon: null == isComingSoon
          ? _self.isComingSoon
          : isComingSoon // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreOrder: null == isPreOrder
          ? _self.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoldOut: null == isSoldOut
          ? _self.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isApproaved: null == isApproaved
          ? _self.isApproaved
          : isApproaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isBanned: null == isBanned
          ? _self.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isReported: null == isReported
          ? _self.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Book implements Book {
  const _Book(
      {required this.id,
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
      this.publisher = '',
      required this.isFavourite,
      required this.isRecommended,
      required this.isWishlist,
      required this.isSaved,
      required this.isBestSeller,
      required this.isTrending,
      required this.isOnSale,
      required this.isDiscounted,
      required this.discount,
      required this.discountedPrice,
      required this.isComingSoon,
      required this.isPreOrder,
      required this.isSoldOut,
      required this.isApproaved,
      required this.isBanned,
      this.isReported = false});
  factory _Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String img;
  @override
  final double rating;
  @override
  final String category;
  @override
  final double price;
  @override
  final String description;
  @override
  final int availableBooks;
  @override
  final String language;
  @override
  final int pages;
  @override
  final int year;
  @override
  @JsonKey()
  final String publisher;
  @override
  final bool isFavourite;
  @override
  final bool isRecommended;
  @override
  final bool isWishlist;
  @override
  final bool isSaved;
  @override
  final bool isBestSeller;
  @override
  final bool isTrending;
  @override
  final bool isOnSale;
  @override
  final bool isDiscounted;
  @override
  final double discount;
  @override
  final double discountedPrice;
  @override
  final bool isComingSoon;
  @override
  final bool isPreOrder;
  @override
  final bool isSoldOut;
  @override
  final bool isApproaved;
  @override
  final bool isBanned;
  @override
  @JsonKey()
  final bool isReported;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Book &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.availableBooks, availableBooks) ||
                other.availableBooks == availableBooks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.isRecommended, isRecommended) ||
                other.isRecommended == isRecommended) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isBestSeller, isBestSeller) ||
                other.isBestSeller == isBestSeller) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isOnSale, isOnSale) ||
                other.isOnSale == isOnSale) &&
            (identical(other.isDiscounted, isDiscounted) ||
                other.isDiscounted == isDiscounted) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.isComingSoon, isComingSoon) ||
                other.isComingSoon == isComingSoon) &&
            (identical(other.isPreOrder, isPreOrder) ||
                other.isPreOrder == isPreOrder) &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.isApproaved, isApproaved) ||
                other.isApproaved == isApproaved) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        author,
        img,
        rating,
        category,
        price,
        description,
        availableBooks,
        language,
        pages,
        year,
        publisher,
        isFavourite,
        isRecommended,
        isWishlist,
        isSaved,
        isBestSeller,
        isTrending,
        isOnSale,
        isDiscounted,
        discount,
        discountedPrice,
        isComingSoon,
        isPreOrder,
        isSoldOut,
        isApproaved,
        isBanned,
        isReported
      ]);

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, img: $img, rating: $rating, category: $category, price: $price, description: $description, availableBooks: $availableBooks, language: $language, pages: $pages, year: $year, publisher: $publisher, isFavourite: $isFavourite, isRecommended: $isRecommended, isWishlist: $isWishlist, isSaved: $isSaved, isBestSeller: $isBestSeller, isTrending: $isTrending, isOnSale: $isOnSale, isDiscounted: $isDiscounted, discount: $discount, discountedPrice: $discountedPrice, isComingSoon: $isComingSoon, isPreOrder: $isPreOrder, isSoldOut: $isSoldOut, isApproaved: $isApproaved, isBanned: $isBanned, isReported: $isReported)';
  }
}

/// @nodoc
abstract mixin class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) _then) =
      __$BookCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String author,
      String img,
      double rating,
      String category,
      double price,
      String description,
      int availableBooks,
      String language,
      int pages,
      int year,
      String publisher,
      bool isFavourite,
      bool isRecommended,
      bool isWishlist,
      bool isSaved,
      bool isBestSeller,
      bool isTrending,
      bool isOnSale,
      bool isDiscounted,
      double discount,
      double discountedPrice,
      bool isComingSoon,
      bool isPreOrder,
      bool isSoldOut,
      bool isApproaved,
      bool isBanned,
      bool isReported});
}

/// @nodoc
class __$BookCopyWithImpl<$Res> implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(this._self, this._then);

  final _Book _self;
  final $Res Function(_Book) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? img = null,
    Object? rating = null,
    Object? category = null,
    Object? price = null,
    Object? description = null,
    Object? availableBooks = null,
    Object? language = null,
    Object? pages = null,
    Object? year = null,
    Object? publisher = null,
    Object? isFavourite = null,
    Object? isRecommended = null,
    Object? isWishlist = null,
    Object? isSaved = null,
    Object? isBestSeller = null,
    Object? isTrending = null,
    Object? isOnSale = null,
    Object? isDiscounted = null,
    Object? discount = null,
    Object? discountedPrice = null,
    Object? isComingSoon = null,
    Object? isPreOrder = null,
    Object? isSoldOut = null,
    Object? isApproaved = null,
    Object? isBanned = null,
    Object? isReported = null,
  }) {
    return _then(_Book(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      availableBooks: null == availableBooks
          ? _self.availableBooks
          : availableBooks // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _self.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommended: null == isRecommended
          ? _self.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _self.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _self.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestSeller: null == isBestSeller
          ? _self.isBestSeller
          : isBestSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _self.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnSale: null == isOnSale
          ? _self.isOnSale
          : isOnSale // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiscounted: null == isDiscounted
          ? _self.isDiscounted
          : isDiscounted // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountedPrice: null == discountedPrice
          ? _self.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isComingSoon: null == isComingSoon
          ? _self.isComingSoon
          : isComingSoon // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreOrder: null == isPreOrder
          ? _self.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoldOut: null == isSoldOut
          ? _self.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isApproaved: null == isApproaved
          ? _self.isApproaved
          : isApproaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isBanned: null == isBanned
          ? _self.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isReported: null == isReported
          ? _self.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
