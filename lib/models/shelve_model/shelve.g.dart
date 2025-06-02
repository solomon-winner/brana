// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shelve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shelve _$ShelveFromJson(Map<String, dynamic> json) => _Shelve(
      shelveId: json['shelveId'] as String,
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      img: json['img'] as String,
      author: json['author'] as String,
      bookCount: (json['bookCount'] as num).toInt(),
      to: json['to'] as String,
      price: (json['price'] as num).toDouble(),
      isPaied: json['isPaied'] as bool? ?? false,
    );

Map<String, dynamic> _$ShelveToJson(_Shelve instance) => <String, dynamic>{
      'shelveId': instance.shelveId,
      'bookId': instance.bookId,
      'title': instance.title,
      'img': instance.img,
      'author': instance.author,
      'bookCount': instance.bookCount,
      'to': instance.to,
      'price': instance.price,
      'isPaied': instance.isPaied,
    };
