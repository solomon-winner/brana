// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCollection _$UserCollectionFromJson(Map<String, dynamic> json) =>
    _UserCollection(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      img: json['img'] as String,
      author: json['author'] as String,
      price: (json['price'] as num?)?.toDouble(),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$UserCollectionToJson(_UserCollection instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'img': instance.img,
      'author': instance.author,
      'price': instance.price,
      'reason': instance.reason,
    };
