import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignedOutDialog extends HookConsumerWidget {
  const SignedOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Card(
      child: Text("Moraš se ulogirat"),
    );
  }
}
