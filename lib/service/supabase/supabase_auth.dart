import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supabase_auth.freezed.dart';

class SupabaseAuthService {
  SupabaseAuthService(this._auth);
  final GoTrueClient _auth;

  TaskEither<Object, User> signIn(String email) {
    return TaskEither.tryCatch(
      () async {
        final response = await _auth.signIn(
          email: email,
          options: AuthOptions(
              redirectTo:
                  kIsWeb ? null : 'com.example.brezovica://login-callback/'),
        );

        if (response.error != null) throw response.error!;

        return response.user!;
      },
      (error, _) => error,
    );
  }

  TaskEither<GotrueError, Unit> signOut() {
    return TaskEither.tryCatch(
      () async {
        final response = await _auth.signOut();

        if (response.error != null) throw response.error!;

        return unit;
      },
      (error, _) => error as GotrueError,
    );
  }

  TaskEither<String, User> signUp(AuthData signUpData) {
    return TaskEither.tryCatch(
      () async {
        final response = await signUpData.email.match(
          (email) => _auth.signUp(email, signUpData.password),
          () => signUpData.phoneNumber.match(
            // Email empty, try phone number
            (phoneNumber) =>
                _auth.signUpWithPhone(phoneNumber, signUpData.password),
            () => Future(() => GotrueSessionResponse(
                error: GotrueError("Molimo unesite email ili broj telefona"))),
          ),
        );

        if (response.error != null) {
          throw response.error!;
        }
        if (response.user == null) {
          throw Exception("WHAAT");
        }
        return response.user!;
      },
      (error, _) => error.toString(),
    );
  }
}

final supabaseAuthProvider = riverpod.Provider<SupabaseAuthService>(
    (_) => SupabaseAuthService(Supabase.instance.client.auth));

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    @Default(None()) Option<String> email,
    @Default(None()) Option<String> phoneNumber,
    required String password,
  }) = _AuthData;
}

class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
  @override
  void onUnauthenticated() {
    if (mounted) {
      // Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
    }
  }

  @override
  void onAuthenticated(Session session) {
    if (mounted) {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    }
  }

  @override
  void onPasswordRecovery(Session session) {}

  @override
  void onErrorAuthenticating(String message) {
    //context.showErrorSnackBar(message: message);
  }
}

class AuthRequiredState<T extends StatefulWidget>
    extends SupabaseAuthRequiredState<T> {
  @override
  void onUnauthenticated() {
    /// Users will be sent back to the LoginPage if they sign out.
    if (mounted) {
      /// Users will be sent back to the LoginPage if they sign out.
      Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
    }
  }
}
