import 'package:brezovica/util/snackbar_mixin.dart';
import 'package:brezovica/widgets/signed_out_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthService {
  SupabaseAuthService(this._auth);
  final GoTrueClient _auth;

  TaskEither<Object, Unit> signIn(String email) {
    return TaskEither.tryCatch(
      () async {
        final response = await _auth.signIn(
          email: email,
          options:
              AuthOptions(redirectTo: kIsWeb ? null : 'com.example.brezovica://login-callback/'),
        );

        if (response.error != null) throw response.error!;

        return unit;
      },
      (error, _) => error,
    );
  }

  TaskEither<Object, Unit> signOut() {
    return TaskEither.tryCatch(
      () async {
        final response = await _auth.signOut();

        if (response.error != null) throw response.error!;

        return unit;
      },
      (error, _) => error,
    );
  }
}

final supabaseAuthProvider = riverpod.Provider.autoDispose<SupabaseAuthService>(
    (_) => SupabaseAuthService(Supabase.instance.client.auth));

class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
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
    context.showErrorSnackBar(message: message);
  }

  @override
  void onUnauthenticated() {}
}
