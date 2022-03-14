import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/screen/bus/bus_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:brezovica/util/snackbar_mixin.dart';

class BusScreen extends HookConsumerWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(busScreenProvider.notifier).getBuses();
      return null;
    }, []);
    final busScreenState = ref.watch(busScreenProvider);
    final animationCtrl =
        useAnimationController(duration: const Duration(milliseconds: 300));
    animationCtrl.forward();
    return FadeTransition(
      opacity: Tween(begin: 0.5, end: 1.0).animate(animationCtrl),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: const Icon(Icons.add),
          backgroundColor: Constants.mainColor,
          onPressed: () {
            busScreenState.maybeWhen(
                error: (_) {},
                orElse: () async {
                  final task = ref
                      .read(busScreenProvider.notifier)
                      .fetchBusesFromContentfulTask();
                  (await task.run()).match(
                    (err) => context.showErrorSnackBar(message: err),
                    (busList) => showModalBottomSheet(
                      context: context,
                      builder: (_) => AddBusBottomSheet(busList: busList),
                    ),
                  );
                });
          },
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bus_bg.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: busScreenState.when(
            initial: () {},
            listBuses: (buses) => busGrid(buses, ref),
            showPdf: (viewer) => WillPopScope(
                onWillPop: () async {
                  ref.read(busScreenProvider.notifier).closePdf();
                  return false;
                },
                child: viewer),
            error: (error) => ErrorWidget(error.join(" ")),
          ),
        ),
      ),
    );
  }

  GridView busGrid(List<Bus> busList, WidgetRef ref) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
      ),
      itemCount: busList.length,
      itemBuilder: (context, index) {
        return Card(
          color: Constants.mainColor,
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () => ref
                .read(busScreenProvider.notifier)
                .showPdf(File(busList[index].fileUrl!)),
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                busList[index].number.toString(),
                style: TextStyle(
                  color: Colors.blue[50],
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AddBusBottomSheet extends HookConsumerWidget {
  const AddBusBottomSheet({Key? key, required this.busList}) : super(key: key);

  final List<Bus> busList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Constants.mainColor,
      child: ListView.builder(
        itemCount: busList.length,
        itemBuilder: (context, index) => BusListItem(busList[index]),
      ),
    );
  }
}

class BusListItem extends HookConsumerWidget {
  const BusListItem(this.bus, {Key? key}) : super(key: key);
  final Bus bus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadProgress = useState(0.0);
    return ListTile(
      title: Text(
        bus.number.toString(),
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        bus.name,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: TextButton.icon(
        icon: const Icon(
          Icons.download,
          color: Colors.white,
        ),
        label: Text(""),
        onPressed: () =>
            ref.read(busScreenProvider.notifier).downloadBusPdf(bus).run(),
      ),
    );
  }
}
