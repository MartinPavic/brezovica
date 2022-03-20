import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:brezovica/util/snackbar_mixin.dart';

class FeedbackScreen extends HookWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = useTextEditingController();
    final _nameValid = useState(false);
    final _textAreaController = useTextEditingController();
    final _textAreaValid = useState(false);
    useEffect(() {
      _nameController.addListener(() {
        _nameValid.value = _nameController.text.isNotEmpty;
      });
      _textAreaController.addListener(() {
        _textAreaValid.value = _textAreaController.text.isNotEmpty;
      });
      return null;
    }, [_nameController, _textAreaController]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Pišite nam",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Constants.mainColor
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ime i prezime",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _textAreaController,
                maxLines: 8,
                decoration: const InputDecoration(
                  hintText: "Kako ste danas?",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    primary: Constants.mainColor),
                onPressed: _nameValid.value && _textAreaValid.value
                    ? () => openEmailApp(context, _nameController.value, _textAreaController.value)
                    : null,
                child: const Text("Pošalji mail"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<Unit> openEmailApp(
      BuildContext context, TextEditingValue name, TextEditingValue content) async {
    final result = await OpenMailApp.composeNewEmailInMailApp(
        emailContent: EmailContent(
      to: [Constants.mzbEmail],
      subject: name.text + " - povratne informacije",
      body: content.text,
    ));
    if (!result.didOpen && !result.canOpen) {
      context.showErrorSnackBar(message: "Nemate instaliranih mail aplikacija");
    } else if (!result.didOpen && result.canOpen) {
      showDialog(
        context: context,
        builder: (_) => MailAppPickerDialog(
          mailApps: result.options,
        ),
      );
    }
    return unit;
  }
}
