import 'package:brana/Providers/users/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/data/repositories/auth_repository/auth_repository.dart';
import 'user_state.dart';

class UserNotifier extends Notifier<AsyncValue<UserState>> {
  late final AuthRepository _authRepository;

  @override
  AsyncValue<UserState> build() {
    _authRepository = ref.read(AuthRepositoryProvider);
    return AsyncValue.data(UserState());
  }

Future<void> checkToken() async {
    final storage = ref.read(secureStorageProvider);
    final token = await storage.read(key: 'token');

    // state = token != null;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final user = await _authRepository.login(email, password);
      // await ref.read(secureStorageProvider).write(key: 'token', value: user.token);
      state = AsyncValue.data(UserState(user: user));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      await _authRepository.logout();
      state = AsyncValue.data(UserState(user: null));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
