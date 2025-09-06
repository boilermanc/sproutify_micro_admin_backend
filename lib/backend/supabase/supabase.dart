import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import '/flutter_flow/flutter_flow_util.dart';

export 'database/database.dart';

String _kSupabaseUrl = 'https://hbblyniohzgkdumcawun.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiYmx5bmlvaHpna2R1bWNhd3VuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3NjQ3NjQsImV4cCI6MjAyMTM0MDc2NH0.F6xR4qysXA4Oyou1KT46z5Sbqk6yx3wSZBSMoyAS824';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        headers: {
          'X-Client-Info': 'flutterflow',
        },
        anonKey: _kSupabaseAnonKey,
        debug: false,
        authOptions:
            FlutterAuthClientOptions(authFlowType: AuthFlowType.implicit),
      );
}
