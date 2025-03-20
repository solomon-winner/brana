import 'package:get_it/get_it.dart';
import 'package:brana/data/repositories/book_repository_impl.dart';
import 'package:brana/data/datasources/book_remote_data_source.dart';
import 'package:brana/Blocs/bookBloc/book_bloc.dart';
import 'package:brana/data/repositories/book_repository.dart';

final getIt = GetIt.instance;

void init() {
  // Register Remote Data Source
  getIt.registerLazySingleton<BookRemoteDataSource>(
    () => BookRemoteDataSourceImpl(),
  );

  // Register Repository with required parameter
  getIt.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(remoteDataSource: getIt()),
  );

  // Register BLoC
  getIt.registerFactory(() => BookBloc(getIt()));
}
