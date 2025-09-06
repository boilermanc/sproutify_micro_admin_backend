import '../database.dart';

class SeedingscheduleTable extends SupabaseTable<SeedingscheduleRow> {
  @override
  String get tableName => 'seedingschedule';

  @override
  SeedingscheduleRow createRow(Map<String, dynamic> data) =>
      SeedingscheduleRow(data);
}

class SeedingscheduleRow extends SupabaseDataRow {
  SeedingscheduleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedingscheduleTable();

  int? get orderid => getField<int>('orderid');
  set orderid(int? value) => setField<int>('orderid', value);

  String? get customername => getField<String>('customername');
  set customername(String? value) => setField<String>('customername', value);

  String? get varietyname => getField<String>('varietyname');
  set varietyname(String? value) => setField<String>('varietyname', value);

  int? get traysneeded => getField<int>('traysneeded');
  set traysneeded(int? value) => setField<int>('traysneeded', value);

  String? get deliveryday => getField<String>('deliveryday');
  set deliveryday(String? value) => setField<String>('deliveryday', value);

  DateTime? get seeddate => getField<DateTime>('seeddate');
  set seeddate(DateTime? value) => setField<DateTime>('seeddate', value);

  String? get expectedharvestdate => getField<String>('expectedharvestdate');
  set expectedharvestdate(String? value) =>
      setField<String>('expectedharvestdate', value);
}
