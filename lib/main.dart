import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Supabase.initialize(
    url: 'https://sxocarroegfdvntghfwj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTY0MDc4MTI4NSwiZXhwIjoxOTU2MzU3Mjg1fQ.O8BmrftOWqfdMyROPhQ54ZNTCzy53Ylgx3_UWb_Jtl8',
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
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{},
    );
  }
}
