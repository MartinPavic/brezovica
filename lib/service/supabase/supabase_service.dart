import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  SupabaseService(this._supabase);
  final Supabase _supabase;

  
}

final supabaseProvider = riverpod.Provider<SupabaseService>((_) => SupabaseService(Supabase.instance));