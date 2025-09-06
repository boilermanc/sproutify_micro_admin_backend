import '../database.dart';

class DebugLogsTable extends SupabaseTable<DebugLogsRow> {
  @override
  String get tableName => 'debug_logs';

  @override
  DebugLogsRow createRow(Map<String, dynamic> data) => DebugLogsRow(data);
}

class DebugLogsRow extends SupabaseDataRow {
  DebugLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DebugLogsTable();

  int get logId => getField<int>('log_id')!;
  set logId(int value) => setField<int>('log_id', value);

  DateTime? get logTimestamp => getField<DateTime>('log_timestamp');
  set logTimestamp(DateTime? value) =>
      setField<DateTime>('log_timestamp', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);
}
