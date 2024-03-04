import 'dart:convert';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/screen/bus/bus_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      backgroundColor: Constants.mainColor,
      body: SafeArea(
        child: Consumer(builder: (context, ref, _) {
          final busesAsyncValue = ref.watch(fetchBusesFromContentfulProvider);
          return busesAsyncValue.when(
              data: (buses) => FeedbackScreenStepper(buses: buses, onComplete: openEmailApp),
              error: (err, st) {
                context.showErrorSnackBar(message: err.toString());
                return ErrorWidget(err);
              },
              loading: () => const CircularProgressIndicator());
        }),
      ),
    );
  }

  Future<Unit> openEmailApp(BuildContext context, EmailContent emailContent) async {
    final result = await OpenMailApp.composeNewEmailInMailApp(emailContent: emailContent);
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

class FeedbackScreenStepper extends HookConsumerWidget {
  final List<Bus> buses;
  final Future<Unit> Function(BuildContext, EmailContent) onComplete;

  const FeedbackScreenStepper({Key? key, required this.buses, required this.onComplete})
      : super(key: key);

  String buildEmailContent(
      Bus bus, String polazak, TimeOfDay vrijemePolaska, List<String> reasons, String josNesto) {
    StringBuffer buffer = StringBuffer();
    buffer.writeln("Bus: ${bus.number}");
    buffer.writeln("Polazak iz: $polazak");
    buffer.writeln("Vrijeme polaska: ${timeOfDayToHourMinute(vrijemePolaska)}");
    if (reasons.isNotEmpty) {
      buffer.writeln("Kako je prošla vožnja: ${reasons.join(', ')}");
    }
    if (josNesto.isNotEmpty) {
      buffer.writeln("Još nešto: $josNesto");
    }
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = useState(0);
    final selectedBus = useState(buses[0]);
    final selectedPolazak = useState("Savski most");
    final selectedVrijemePolaska = useState(TimeOfDay.now());
    final selectedReasons = useState(<String>[]);
    final josNestoTextEditingController =
        useTextEditingController.fromValue(TextEditingValue.empty);
    return Stepper(
      currentStep: currentStep.value,
      steps: [
        Step(
          title: const Text(
            'Linija',
            style: TextStyle(color: Colors.white),
          ),
          content: buses.isNotEmpty
              ? SelectBus(
                  buses: buses,
                  selectedBus: selectedBus,
                )
              : Container(),
          isActive: currentStep.value >= 0,
          state: currentStep.value >= 0
              ? (currentStep.value == 0 ? StepState.editing : StepState.complete)
              : StepState.indexed,
        ),
        Step(
          title: const Text(
            "Polazak linije",
            style: TextStyle(color: Colors.white),
          ),
          content: SelectPolazak(
            selectedPolazak: selectedPolazak,
          ),
          isActive: currentStep.value >= 1,
          state: currentStep.value >= 1
              ? (currentStep.value == 1 ? StepState.editing : StepState.complete)
              : StepState.indexed,
        ),

        // STEP 1: odabrat bus ili brezvoica,
        // STEP 2 za bus: Koji bus, u kolko sati itd // STEP 2 za brezovica: vidit u zg aplikaciji
        // STEP 3 za bus: Pitanja, tipa jel guzva, jel vruce itd // STEP 3 za brezovica: ubost na karti
        // STEP 4: dodat nesto - text area
        Step(
          title: const Text(
            "Vrijeme polaska linije",
            style: TextStyle(color: Colors.white),
          ),
          content: SelectVrijemePolaska(
            selectedVrijemePolaska: selectedVrijemePolaska,
          ),
          isActive: currentStep.value >= 2,
          state: currentStep.value >= 2
              ? (currentStep.value == 2 ? StepState.editing : StepState.complete)
              : StepState.indexed,
        ),
        Step(
          title: const Text(
            "Kako je prošla vožnja",
            style: TextStyle(color: Colors.white),
          ),
          content: SelectOpis(
            selectedReasons: selectedReasons,
          ),
          isActive: currentStep.value >= 3,
          state: currentStep.value >= 3
              ? (currentStep.value == 3 ? StepState.editing : StepState.complete)
              : StepState.indexed,
        ),
        Step(
          title: const Text(
            "Još nešto",
            style: TextStyle(color: Colors.white),
          ),
          content: JosNestoWidget(
            josNestoTextEditingController: josNestoTextEditingController,
          ),
          isActive: currentStep.value >= 4,
          state: currentStep.value >= 4
              ? (currentStep.value == 4 ? StepState.editing : StepState.complete)
              : StepState.indexed,
        )
      ],
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Row(
          children: <Widget>[
            TextButton(
              onPressed: currentStep.value == 4
                  ? () {
                      Navigator.pop(context);
                      onComplete(
                        context,
                        EmailContent(
                          to: [Constants.mzbEmail],
                          subject: "[MZB APP] - ZET report",
                          body: buildEmailContent(
                            selectedBus.value,
                            selectedPolazak.value,
                            selectedVrijemePolaska.value,
                            selectedReasons.value,
                            josNestoTextEditingController.text,
                          ),
                        ),
                      );
                    }
                  : () => currentStep.value += 1, // sendForm()
              child: Text(
                currentStep.value == 4 ? 'Pošalji' : 'Dalje',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: currentStep.value == 0 ? null : () => currentStep.value -= 1,
              child: const Text(
                'Nazad',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SelectBus extends HookWidget {
  const SelectBus({Key? key, required this.buses, required this.selectedBus}) : super(key: key);

  final List<Bus> buses;
  final ValueNotifier<Bus> selectedBus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buses
          .map(
            (bus) => Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: ListTile(
                title: Text(
                  bus.number.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                leading: Radio<Bus>(
                  value: bus,
                  groupValue: selectedBus.value,
                  onChanged: (Bus? value) => selectedBus.value = value!,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class SelectPolazak extends HookWidget {
  const SelectPolazak({Key? key, required this.selectedPolazak}) : super(key: key);
  final ValueNotifier<String> selectedPolazak;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: Colors.white),
      child: Column(children: [
        ListTile(
          title: const Text(
            "Savski most",
            style: TextStyle(color: Colors.white),
          ),
          leading: Radio<String>(
            value: "Savski most",
            groupValue: selectedPolazak.value,
            onChanged: (String? value) => selectedPolazak.value = value!,
          ),
        ),
        ListTile(
          title: const Text(
            "Okretište linije (npr. Ašpergeri, Lipnica, itd.)",
            style: TextStyle(color: Colors.white),
          ),
          leading: Radio<String>(
            value: "Okretište linije",
            groupValue: selectedPolazak.value,
            onChanged: (String? value) => selectedPolazak.value = value!,
          ),
        )
      ]),
    );
  }
}

String timeOfDayToHourMinute(TimeOfDay tod) {
  final hour = tod.hour < 10 ? "0${tod.hour}" : tod.hour.toString();
  final minute = tod.minute < 10 ? "0${tod.minute}" : tod.minute.toString();
  return "$hour:$minute";
}

class SelectVrijemePolaska extends HookWidget {
  const SelectVrijemePolaska({Key? key, required this.selectedVrijemePolaska}) : super(key: key);

  final ValueNotifier<TimeOfDay> selectedVrijemePolaska;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController.fromValue(TextEditingValue.empty);
    return SizedBox(
      width: 100,
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        readOnly: true,
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: "16:10",
          hintStyle: TextStyle(color: Colors.white),
        ),
        onTap: () async {
          final pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            builder: (BuildContext context, Widget? child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
                child: child!,
              );
            },
          );
          if (pickedTime != null) {
            controller.text = timeOfDayToHourMinute(pickedTime);
            selectedVrijemePolaska.value = pickedTime;
          }
        },
      ),
    );
  }
}

class SelectOpis extends HookWidget {
  SelectOpis({Key? key, required this.selectedReasons}) : super(key: key);

  final List<String> reasons = ["Bus je kasnio", "Bus nije uopće došao", "Bus je bio prenatrpan"];
  final ValueNotifier<List<String>> selectedReasons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: reasons.length,
      itemBuilder: (context, index) {
        return Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: CheckboxListTile(
            value: selectedReasons.value.contains(reasons[index]),
            onChanged: (value) {
              if (!value!) {
                selectedReasons.value = selectedReasons.value.delete(reasons[index]).toList();
              } else {
                selectedReasons.value = selectedReasons.value.append(reasons[index]).toList();
              }
            },
            title: Text(
              reasons[index],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

class JosNestoWidget extends HookWidget {
  const JosNestoWidget({Key? key, required this.josNestoTextEditingController}) : super(key: key);

  final TextEditingController josNestoTextEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: josNestoTextEditingController,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintText: 'Još nešto...',
        hintStyle: TextStyle(color: Colors.white),
      ),
      minLines: 3,
      maxLines: 4,
      style: const TextStyle(color: Colors.white),
    );
  }
}
