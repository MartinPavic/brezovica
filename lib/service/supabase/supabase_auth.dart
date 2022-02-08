import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supabase_auth.freezed.dart';

class SupabaseAuthService {
  SupabaseAuthService(this._auth);
  final GoTrueClient _auth;

  TaskEither<String, User> signIn(SignInData signInData) {
    return TaskEither.tryCatch(
      () async {
        final response = await _auth.signIn(
          email: signInData.email,
          password: signInData.password,
        );
        if (response.error != null) {
          throw response.error!;
        }
        if (response.user == null) {
          throw Exception("WHAAT");
        }
        return response.user!;
      },
      (error, stackTrace) => error.toString(),
    );
  }

  TaskEither<String, User> signUp(SignUpData signUpData) {
    return TaskEither.tryCatch(
      () async {
        final response = await _auth.signUp(
          signUpData.email,
          signUpData.password,
        );
        if (response.error != null) {
          throw response.error!;
        }
        if (response.user == null) {
          throw Exception("WHAAT");
        }
        return response.user!;
      },
      (error, stackTrace) => error.toString(),
    );
  }
}

final supabaseAuthProvider = riverpod.Provider<SupabaseAuthService>(
    (_) => SupabaseAuthService(Supabase.instance.client.auth));

@freezed
class SignInData with _$SignInData {
  const factory SignInData({
    required String email,
    required String password,
  }) = _SignInData;
}

@freezed
class SignUpData with _$SignUpData {
  const factory SignUpData({
    required String email,
    required String password,
  }) = _SignUpData;
}
