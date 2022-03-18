import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              "Mladi za brezovicu",
              style:
                  TextStyle(color: Constants.mainColor, fontWeight: FontWeight.bold, fontSize: 36),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                """Mi smo ambiciozna ekipa iz najboljeg kvarta u Zagrebu - Brezovice. Naši su članovi mladi i entuzijastični stručnjaci iz različitih područja, koji svojim znanjem mogu ponuditi inovativna rješenja na izazove s kojima se GČ Brezovica susreće. 

Pokreću nas vizije ljepše, sretnije i bolje Brezovice. Brezovice kakvu svi zaslužujemo. Naša je misija definirana željom za podizanjem kvalitete življenja u Brezovici. Da bismo u tome uspjeli, ne želimo vam mazati oči pustim obećanjima, već realnim ciljevima i projektima.

Da bismo izgradili Brezovicu kakvu svi zaslužujemo, potrebna nam je vaša pomoć. Na lokalnim izborima 16. svibnja 2021., svoj glas možete dati stranci Mladi za Brezovicu. Jer glas za mlade je glas za bolju Brezovicu!
                """),
          ],
        ),
      ),
    );
  }
}
