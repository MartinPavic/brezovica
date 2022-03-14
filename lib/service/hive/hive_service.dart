import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HiveService {}
final hiveProvider = Provider.autoDispose((_) => HiveService());