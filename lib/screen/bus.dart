import 'package:brezovica/model/bus/bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BusScreen extends HookWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class BusState extends StateNotifier<String> {
  BusState() : super("aaaa");

  Future<Unit> _update(
    TaskEither<String, Bus> Function() request,
  ) async {
    state = "yooo";
    final result = request();
    state = (await result.run()).match(
      (error) => error, 
      (bus) => "$bus"
    );
    return unit;
  }
}

final busProvider = StateNotifierProvider<BusState, String>((_) => BusState());
