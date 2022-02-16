import 'package:brezovica/constants.dart';
import 'package:brezovica/screen/bus/bus_screen.dart';
import 'package:brezovica/screen/info/info_screen.dart';
import 'package:brezovica/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends StatefulHookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final List<Widget> _widgetOptions = [
    const BusScreen(),
    const InfoScreen(),
    const ProfileScreen(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 10,
        backgroundColor: Constants.mainColor,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Constants.mainColor,
              activeIcon: Icon(Icons.directions_bus_filled),
              icon: Icon(Icons.directions_bus_outlined),
              label: 'Bus'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.feed),
              icon: Icon(Icons.feed_outlined),
              label: 'Obavijesti'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.feedback),
              icon: Icon(Icons.feedback_outlined),
              label: 'Feedback'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.info),
              icon: Icon(Icons.info_outline),
              label: 'O nama'),
        ],
        currentIndex: selectedIndex.value,
        selectedItemColor: Colors.white,
        onTap: (index) {
          selectedIndex.value = index;
        },
      ),
    );
  }
}
