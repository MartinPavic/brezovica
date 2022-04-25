import 'package:brezovica/constants.dart';
import 'package:brezovica/screen/about/about_screen.dart';
import 'package:brezovica/screen/feedback/feedback_screen.dart';
import 'package:brezovica/screen/home/home_screen_controller.dart';
import 'package:brezovica/screen/info/info_screen.dart';
import 'package:brezovica/screen/map/map_screen.dart';
import 'package:brezovica/widgets/post_card.dart';
import 'package:brezovica/widgets/weather_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends StatefulHookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final List<Widget> _widgetOptions = [
    const MapScreen(),
    const InfoScreen(),
    const FeedbackScreen(),
    const AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.cyan,
        splashColor: Colors.white,
        elevation: 10,
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FeedbackScreen(),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        icon: const Icon(Icons.note_alt),
        label: const Text("Report"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Constants.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Trenutno vrijeme u brezovici: ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0, top: 8.0),
                      child: WeatherWidget(),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                  child: Text(
                    "Što ima novo:",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Consumer(
                builder: (ctx, ref, _) {
                  final latestPostAsyncValue = ref.watch(latestPostFutureProvider);
                  return latestPostAsyncValue.when(
                    data: (post) => post.match(
                      (post) => PostCard(post),
                      () => const SizedBox(),
                    ),
                    error: (err, _) => const SizedBox(),
                    loading: () => const SizedBox(),
                  );
                },
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const InfoScreen(),
                      ),
                    ),
                    icon: const Text("Još novosti", style: TextStyle(color: Colors.white)),
                    label: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  )),
              const ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  HomeMenuButton(
                    Icon(
                      Icons.map,
                      color: Colors.white,
                    ),
                    Text(
                      "Karta",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  HomeMenuButton(
                    Icon(
                      Icons.directions_bus,
                      color: Colors.white,
                    ),
                    Text(
                      "Zet",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  HomeMenuButton(
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    Text(
                      "O nama",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeMenuButton extends StatelessWidget {
  const HomeMenuButton(this.icon, this.label, {Key? key}) : super(key: key);
  final Icon icon;
  final Text label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 100,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      decoration: const BoxDecoration(
        color: Constants.mainColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
          ),
        ],
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: icon,
        label: label,
      ),
    );
  }
}
