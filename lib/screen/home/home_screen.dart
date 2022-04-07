import 'package:brezovica/constants.dart';
import 'package:brezovica/screen/about/about_screen.dart';
import 'package:brezovica/screen/bus/bus_screen.dart';
import 'package:brezovica/screen/feedback/feedback_screen.dart';
import 'package:brezovica/screen/info/info_screen.dart';
import 'package:brezovica/screen/map/map_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends StatefulHookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
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
    final selectedIndex = useState<int>(1);
    final pageController = usePageController(initialPage: 1);
    return Scaffold(
      body: PageView(
        children: _widgetOptions,
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 10,
        iconSize: 32,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Constants.mainColor,
              activeIcon: Icon(Icons.map),
              icon: Icon(Icons.map_outlined),
              label: 'Bus'),
          BottomNavigationBarItem(
              backgroundColor: Constants.mainColor,
              activeIcon: Icon(Icons.feed),
              icon: Icon(Icons.feed_outlined),
              label: 'Obavijesti'),
          BottomNavigationBarItem(
              backgroundColor: Constants.mainColor,
              activeIcon: Icon(Icons.feedback),
              icon: Icon(Icons.feedback_outlined),
              label: 'Feedback'),
          BottomNavigationBarItem(
              backgroundColor: Constants.mainColor,
              activeIcon: Icon(Icons.info),
              icon: Icon(Icons.info_outline),
              label: 'O nama'),
        ],
        currentIndex: selectedIndex.value,
        onTap: (index) {
          selectedIndex.value = index;
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
