import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:brezovica/util/snackbar_mixin.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FeedbackScreen extends StatefulHookWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends SupabaseAuthRequiredState<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    final _authenticated = useState(false);
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
        child: Stepper(
          steps: const [
            Step(title: Text('Tip'), content: SelectReportType()),
            // STEP 1: odabrat bus ili brezvoica,
            // STEP 2 za bus: Koji bus, u kolko sati itd // STEP 2 za brezovica: vidit u zg aplikaciji
            // STEP 3 za bus: Pitanja, tipa jel guzva, jel vruce itd // STEP 3 za brezovica: ubost na karti
            // STEP 4: dodat nesto - text area
            Step(title: Text("aa"), content: Text("asda")),
            Step(title: Text("aa"), content: Text("asda"))
          ],
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            return Row(
              children: <Widget>[
                TextButton(
                  onPressed: details.onStepContinue,
                  child: Text('Dalje'),
                ),
                TextButton(
                  onPressed: details.onStepCancel,
                  child: Text('Nazad'),
                ),
              ],
            );
          },
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

  @override
  void onUnauthenticated() {
    // TODO: implement onUnauthenticated
  }
}

enum ReportType { bus, brezovica }

class SelectReportType extends HookWidget {
  const SelectReportType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedType = useState(ReportType.bus);
    return Column(
      children: [
        ListTile(
          title: const Text('Bus'),
          leading: Radio<ReportType>(
            value: ReportType.bus,
            groupValue: _selectedType.value,
            onChanged: (ReportType? value) => _selectedType.value = value!,
          ),
        ),
        ListTile(
          title: const Text('Brezovica'),
          leading: Radio<ReportType>(
            value: ReportType.brezovica,
            groupValue: _selectedType.value,
            onChanged: (ReportType? value) => _selectedType.value = value!,
          ),
        ),
      ],
    );
  }
}
