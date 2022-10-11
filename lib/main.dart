import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/screen/feedback/feedback_screen_2.dart';
import 'package:brezovica/screen/home/home_screen.dart';
import 'package:brezovica/screen/login/login_screen.dart';
import 'package:brezovica/screen/map/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Hive.initFlutter();
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    debug: true,
  );

  runApp(const ProviderScope(child: MyApp()));
}

/// This is the main application widget.
class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Brezovica';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/map': (context) => const MapScreen(),
        '/feedback': (context) => const FeedbackScreen(),
      },
    );
  }
}
