import '../database.dart';

class TraysTable extends SupabaseTable<TraysRow> {
  @override
  String get tableName => 'trays';

  @override
  TraysRow createRow(Map<String, dynamic> data) => TraysRow(data);
}

class TraysRow extends SupabaseDataRow {
  TraysRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TraysTable();

  int get trayId => getField<int>('tray_id')!;
  set trayId(int value) => setField<int>('tray_id', value);

  String get farmUuid => getField<String>('farm_uuid')!;
  set farmUuid(String value) => setField<String>('farm_uuid', value);

  String get trayUniqueId => getField<String>('tray_unique_id')!;
  set trayUniqueId(String value) => setField<String>('tray_unique_id', value);

  int get recipeId => getField<int>('recipe_id')!;
  set recipeId(int value) => setField<int>('recipe_id', value);

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  DateTime get sowDate => getField<DateTime>('sow_date')!;
  set sowDate(DateTime value) => setField<DateTime>('sow_date', value);

  double? get yield => getField<double>('yield');
  set yield(double? value) => setField<double>('yield', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);
}
