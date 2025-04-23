import 'package:brana/Providers/users/user_state.dart';
import 'package:brana/data/datasources/auth_remote_data_source.dart';
import 'package:brana/data/repositories/auth_repository/auth_repository.dart';
import 'package:brana/data/repositories/auth_repository/auth_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/Providers/dio_provider.dart';
import 'package:brana/Providers/users/user_notifier.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final userRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref){
  return AuthRemoteDataSourceImpl(ref.watch(dioProvider));
});

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

// Repository Provider
final AuthRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final prefs = ref.watch(secureStorageProvider);
  final cookieJar = ref.watch(cookieJarProvider);
  return AuthRepositoryImpl(dio: dio,
    storage: prefs,
    cookieJar: cookieJar,);
});

final userNotifierProvider = NotifierProvider<UserNotifier, AsyncValue<UserState>>(UserNotifier.new);