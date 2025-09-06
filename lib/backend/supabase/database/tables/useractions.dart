import '../database.dart';

class UseractionsTable extends SupabaseTable<UseractionsRow> {
  @override
  String get tableName => 'useractions';

  @override
  UseractionsRow createRow(Map<String, dynamic> data) => UseractionsRow(data);
}

class UseractionsRow extends SupabaseDataRow {
  UseractionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UseractionsTable();

  int get actionid => getField<int>('actionid')!;
  set actionid(int value) => setField<int>('actionid', value);

  int? get trayid => getField<int>('trayid');
  set trayid(int? value) => setField<int>('trayid', value);

  int? get stepid => getField<int>('stepid');
  set stepid(int? value) => setField<int>('stepid', value);

  DateTime? get actiondate => getField<DateTime>('actiondate');
  set actiondate(DateTime? value) => setField<DateTime>('actiondate', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);
}
