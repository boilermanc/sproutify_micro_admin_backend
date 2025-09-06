import '../database.dart';

class DailyLabelsTable extends SupabaseTable<DailyLabelsRow> {
  @override
  String get tableName => 'daily_labels';

  @override
  DailyLabelsRow createRow(Map<String, dynamic> data) => DailyLabelsRow(data);
}

class DailyLabelsRow extends SupabaseDataRow {
  DailyLabelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DailyLabelsTable();

  int get labelId => getField<int>('label_id')!;
  set labelId(int value) => setField<int>('label_id', value);

  int get farmid => getField<int>('farmid')!;
  set farmid(int value) => setField<int>('farmid', value);

  String get trayuniqueid => getField<String>('trayuniqueid')!;
  set trayuniqueid(String value) => setField<String>('trayuniqueid', value);

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  DateTime get sowndate => getField<DateTime>('sowndate')!;
  set sowndate(DateTime value) => setField<DateTime>('sowndate', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
