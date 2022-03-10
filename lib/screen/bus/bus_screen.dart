import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/screen/bus/bus_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            busScreenState.maybeWhen(error: (_) {}, orElse: () {});
            // showModalBottomSheet(
            //     context: context, builder: addBusBottomSheet));
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
            listBuses: (buses) => busList(buses, ref),
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

  ListView busList(List<Bus> busList, WidgetRef ref) {
    return ListView.builder(
        itemCount: busList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {},

              // () => ref
              //   .read(busScreenProvider.notifier)
              //   .showPdf(File(busList[index].pdfFilePath!)),
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GlassmorphicContainer(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                borderRadius: 20,
                blur: 2,
                alignment: Alignment.centerLeft,
                border: 2,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.25),
                      const Color(0xFFFFFFFF).withOpacity(0.1),
                      const Color(0xFFffffff).withOpacity(0.05),
                    ],
                    stops: const [
                      0.1,
                      0.5,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.5),
                    const Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              busList[index].number.toString(),
                              style: TextStyle(
                                  color: Colors.blue[50],
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.visible),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {},

                              // () => ref
                              //   .read(pdfProvider.notifier)
                              //   .deletePdf(File(busList[index].pdfFilePath!)),
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              busList[index].name,
                              style: TextStyle(
                                color: Colors.blue[50],
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
