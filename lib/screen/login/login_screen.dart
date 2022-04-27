import 'package:brezovica/constants.dart';
import 'package:brezovica/util/snackbar_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../service/supabase/supabase_auth.dart';

class LoginScreen extends StatefulHookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends AuthState<LoginScreen> implements ConsumerState<LoginScreen> {
  final emailRegExp = RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)");

  @override
  void initState() {
    recoverSupabaseSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    final _emailValid = useState(false);

    useEffect(() {
      _emailController.addListener(() {
        _emailValid.value = emailRegExp.hasMatch(_emailController.text);
      });
      return null;
    }, [_emailController]);

    final _isLoading = useState(false);
    final supabaseAuthService = ref.read(supabaseAuthProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.mainColor,
        body: Column(
          children: [
            SizedBox(
              child: Image.asset("assets/mzb.png"),
              //height: MediaQuery.of(context).size.height / 3,
              width: 200,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
              child: Text(
                  "Upiši svoju e-mail adresu, poslat ćemo ti mail za prijavu - ne moraš pamtiti još jednu šifru! :)",
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Email',
                      errorText: _emailController.text.isNotEmpty && _emailValid.value
                          ? null
                          : 'Molimo unesite ispravan email, npr: primjer@gmail.com',
                    ),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: !_isLoading.value && !_emailValid.value
                        ? null
                        : () {
                            _isLoading.value = true;
                            supabaseAuthService
                                .signIn(_emailController.text)
                                .match(
                                  (l) => context.showErrorSnackBar(message: l.toString()),
                                  (r) => context.showSnackBar(message: 'Provjeri svoj email!'),
                                )
                                .run()
                                .whenComplete(() => _isLoading.value = false);
                          },
                    child: Text(
                      _isLoading.value ? 'Loading' : 'Pošalji mi link za prijavu',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
          },
          icon: const Text(
            "Nastavi anonimno",
            style: TextStyle(color: Colors.white),
          ),
          label: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  WidgetRef get ref => context as WidgetRef;
}
