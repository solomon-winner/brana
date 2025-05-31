import 'package:brana/Providers/collection/collection_notifier.dart';
import 'package:brana/Providers/collection/collection_state.dart';
import 'package:brana/data/datasources/collection_data_source.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/Providers/dio_provider.dart';

final collectionRemoteDataSourceProvider = Provider<CollectionDataSource>((ref){
  return CollectionDataSourceImpl(ref.watch(dioProvider));//
});

final collectionRepositoryProvider = Provider<CollectionRepository>((ref) {
  return CollectionRepositoryImpl(ref.watch(collectionRemoteDataSourceProvider));
});

final collectionNotifierProvider = NotifierProvider<CollectionNotifier, AsyncValue<CollectionState>>(CollectionNotifier.new);