import '../database.dart';

class FarmTraysWithEmailTable extends SupabaseTable<FarmTraysWithEmailRow> {
  @override
  String get tableName => 'farm_trays_with_email';

  @override
  FarmTraysWithEmailRow createRow(Map<String, dynamic> data) =>
      FarmTraysWithEmailRow(data);
}

class FarmTraysWithEmailRow extends SupabaseDataRow {
  FarmTraysWithEmailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmTraysWithEmailTable();

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get trayUniqueId => getField<String>('tray_unique_id');
  set trayUniqueId(String? value) => setField<String>('tray_unique_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get trayCreationDate => getField<DateTime>('tray_creation_date');
  set trayCreationDate(DateTime? value) =>
      setField<DateTime>('tray_creation_date', value);
}
