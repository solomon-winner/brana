import 'dart:convert';

import 'package:brana/Providers/users/user_provider.dart';
import 'package:brana/models/user_model/user_profile/user_profile.dart';
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
    final token = await storage.read(key: 'auth_token');
    final userJson = await storage.read(key: 'current_user');

    if(token != null && userJson != null) {
      final user = UserProfile.fromJson(jsonDecode(userJson));
      state = AsyncValue.data(UserState(user: user));
    } else {
      state = AsyncValue.data(UserState(user: null));
    }
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final response = await _authRepository.login(email, password);
      state = AsyncValue.data(UserState(user: response.user));
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
