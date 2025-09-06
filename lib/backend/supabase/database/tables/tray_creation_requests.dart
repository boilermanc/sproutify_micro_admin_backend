import '../database.dart';

class TrayCreationRequestsTable extends SupabaseTable<TrayCreationRequestsRow> {
  @override
  String get tableName => 'tray_creation_requests';

  @override
  TrayCreationRequestsRow createRow(Map<String, dynamic> data) =>
      TrayCreationRequestsRow(data);
}

class TrayCreationRequestsRow extends SupabaseDataRow {
  TrayCreationRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrayCreationRequestsTable();

  int get requestId => getField<int>('request_id')!;
  set requestId(int value) => setField<int>('request_id', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);

  String? get recipeName => getField<String>('recipe_name');
  set recipeName(String? value) => setField<String>('recipe_name', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get requestedAt => getField<DateTime>('requested_at');
  set requestedAt(DateTime? value) => setField<DateTime>('requested_at', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);
}
