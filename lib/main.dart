import 'package:brezovica/service/pdf/pdf.dart';
import 'package:brezovica/screen/bus/bus_screen.dart';
import 'package:brezovica/screen/info/info_screen.dart';
import 'package:brezovica/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:brezovica/constants.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

/// This is the main application widget.
class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Brezovica';
  static const List<Widget> _widgetOptions = <Widget>[
    BusScreen(),
    InfoScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState<int>(0);
    useEffect(() {
      ref.read(pdfProvider.notifier).getPdfs();
    }, []);
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                activeIcon: Icon(Icons.list_alt_sharp),
                icon: Icon(Icons.list_alt_outlined),
                label: 'Obavijesti'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outlined),
                label: 'Profil'),
          ],
          currentIndex: selectedIndex.value,
          selectedItemColor: Colors.white,
          onTap: (index) {
            selectedIndex.value = index;
          },
        ),
      ),
    );
  }
}
