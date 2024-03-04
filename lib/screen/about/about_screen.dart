import 'package:brezovica/constants.dart';
import 'package:brezovica/service/supabase/supabase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:brezovica/util/snackbar_mixin.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Mladi za brezovicu",
                style: TextStyle(
                    color: Constants.mainColor, fontWeight: FontWeight.bold, fontSize: 36),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  """Mi smo ambiciozna ekipa iz najboljeg kvarta u Zagrebu - Brezovice. Naši su članovi mladi i entuzijastični stručnjaci iz različitih područja, koji svojim znanjem mogu ponuditi inovativna rješenja na izazove s kojima se GČ Brezovica susreće. 
        
        Pokreću nas vizije ljepše, sretnije i bolje Brezovice. Brezovice kakvu svi zaslužujemo. Naša je misija definirana željom za podizanjem kvalitete življenja u Brezovici. Da bismo u tome uspjeli, ne želimo vam mazati oči pustim obećanjima, već realnim ciljevima i projektima.
        
        Da bismo izgradili Brezovicu kakvu svi zaslužujemo, potrebna nam je vaša pomoć. Na lokalnim izborima 16. svibnja 2021., svoj glas možete dati stranci Mladi za Brezovicu. Jer glas za mlade je glas za bolju Brezovicu!
                  """),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ElevatedButton(
                    onPressed: () async {
                      ref
                          .read(supabaseAuthProvider)
                          .signOut()
                          .match(
                            (err) => context.showErrorSnackBar(message: err.toString()),
                            (_) => Navigator.pushNamedAndRemoveUntil(
                                context, '/login', (route) => false),
                          )
                          .run();
                    },
                    child: const Text('Odjavi se'),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
