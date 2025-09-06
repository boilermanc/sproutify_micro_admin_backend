import '../database.dart';

class ViewTrayOrdersTable extends SupabaseTable<ViewTrayOrdersRow> {
  @override
  String get tableName => 'view_tray_orders';

  @override
  ViewTrayOrdersRow createRow(Map<String, dynamic> data) =>
      ViewTrayOrdersRow(data);
}

class ViewTrayOrdersRow extends SupabaseDataRow {
  ViewTrayOrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTrayOrdersTable();

  int? get trayID => getField<int>('Tray ID');
  set trayID(int? value) => setField<int>('Tray ID', value);

  String? get farmUUID => getField<String>('Farm UUID');
  set farmUUID(String? value) => setField<String>('Farm UUID', value);

  String? get farmName => getField<String>('Farm Name');
  set farmName(String? value) => setField<String>('Farm Name', value);

  String? get trayUniqueID => getField<String>('Tray Unique ID');
  set trayUniqueID(String? value) => setField<String>('Tray Unique ID', value);

  String? get customerName => getField<String>('Customer Name');
  set customerName(String? value) => setField<String>('Customer Name', value);

  DateTime? get sowDate => getField<DateTime>('Sow Date');
  set sowDate(DateTime? value) => setField<DateTime>('Sow Date', value);

  double? get yield => getField<double>('Yield');
  set yield(double? value) => setField<double>('Yield', value);

  String? get createdBy => getField<String>('Created By');
  set createdBy(String? value) => setField<String>('Created By', value);

  DateTime? get createdAt => getField<DateTime>('Created At');
  set createdAt(DateTime? value) => setField<DateTime>('Created At', value);

  int? get batchID => getField<int>('Batch ID');
  set batchID(int? value) => setField<int>('Batch ID', value);

  DateTime? get harvestDate => getField<DateTime>('Harvest Date');
  set harvestDate(DateTime? value) => setField<DateTime>('Harvest Date', value);
}
