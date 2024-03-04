import 'package:brezovica/constants.dart';
import 'package:brezovica/screen/about/about_screen.dart';
import 'package:brezovica/screen/feedback/feedback_screen.dart';
import 'package:brezovica/screen/home/home_screen_controller.dart';
import 'package:brezovica/screen/info/info_screen.dart';
import 'package:brezovica/screen/map/map_screen.dart';
import 'package:brezovica/util/snackbar_mixin.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Constants.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24, top: 8, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 2,
                      child: Text(
                        "Trenutno vrijeme u brezovici: ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: WeatherWidget(),
                          ),
                        ],
                      ),
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
                      () => const CircularProgressIndicator(),
                    ),
                    error: (err, _) {
                      context.showErrorSnackBar(message: err.toString());
                      return ErrorWidget(err);
                    },
                    loading: () => const CircularProgressIndicator(),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  HomeMenuButton(
                    '/map',
                    Icon(
                      Icons.map,
                      color: Colors.white,
                    ),
                    Size(64, 64),
                  ),
                  HomeMenuButton(
                    '/feedback',
                    Icon(
                      Icons.note_alt,
                      color: Colors.white,
                    ),
                    Size(180, 180),
                  ),
                  // HomeMenuButton(
                  //   '/zet',
                  //   Icon(
                  //     Icons.directions_bus,
                  //     color: Colors.white,
                  //   ),
                  //   Text(
                  //     "Zet",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  HomeMenuButton(
                    '/about',
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    Size(64, 64),
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
  const HomeMenuButton(this.page, this.icon, this.size, {Key? key}) : super(key: key);
  final String page;
  final Icon icon;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, page),
      child: Container(
        height: size.height,
        width: size.width,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Constants.mainColor,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10,
            ),
          ],
        ),
        child: icon,
      ),
    );
  }
}
