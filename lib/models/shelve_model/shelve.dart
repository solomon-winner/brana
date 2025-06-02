import 'package:freezed_annotation/freezed_annotation.dart';

part 'shelve.freezed.dart';
part 'shelve.g.dart';

@freezed
abstract class Shelve with _$Shelve {
  const factory Shelve({
    required String shelveId,
    required String bookId,
    required String title,
    required String img,
    required String author,
    required int bookCount,
    required String to,
    required double price,
    @Default(false) bool isPaied,
  }) = _Shelve;

  factory Shelve.fromJson(Map<String, dynamic> json) => _$ShelveFromJson(json);
}
