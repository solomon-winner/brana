import 'package:brana/models/user_model/user_profile/user_profile.dart';

class UserState {
  final UserProfile? user;
  final bool isLoading;
  final String? error;

  UserState({
    this.user,
    this.isLoading = false,
    this.error,
  });

  UserState copyWith({
    UserProfile? user,
    bool? isLoading,
    String? error,
  }) {
    return UserState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}
