import 'package:brezovica/util/snackbar_mixin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../service/supabase/supabase_auth.dart';

class LoginScreen extends StatefulHookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends AuthState<LoginScreen>
    implements ConsumerState<LoginScreen> {
  @override
  void initState() {
    recoverSupabaseSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    final _isLoading = useState(false);
    final supabaseAuthService = ref.read(supabaseAuthProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        children: [
          const Text('Sign in'),
          const SizedBox(height: 18),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 18),
          ElevatedButton(
            onPressed: _isLoading.value
                ? null
                : () {
                    supabaseAuthService.signIn(_emailController.text).match(
                      (l) => context.showErrorSnackBar(message: l.toString()),
                      (r) {
                        context.showSnackBar(
                            message: 'Check your email for login link!',
                            backgroundColor: Colors.green);
                      },
                    ).run();
                  },
            child: Text(_isLoading.value ? 'Loading' : 'Send Magic Link'),
          ),
        ],
      ),
    );
  }

  @override
  WidgetRef get ref => context as WidgetRef;
}
