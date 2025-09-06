import '../database.dart';

class StandingordersTable extends SupabaseTable<StandingordersRow> {
  @override
  String get tableName => 'standingorders';

  @override
  StandingordersRow createRow(Map<String, dynamic> data) =>
      StandingordersRow(data);
}

class StandingordersRow extends SupabaseDataRow {
  StandingordersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StandingordersTable();

  int get orderid => getField<int>('orderid')!;
  set orderid(int value) => setField<int>('orderid', value);

  int? get customerid => getField<int>('customerid');
  set customerid(int? value) => setField<int>('customerid', value);

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  int? get traysneeded => getField<int>('traysneeded');
  set traysneeded(int? value) => setField<int>('traysneeded', value);

  String? get deliveryday => getField<String>('deliveryday');
  set deliveryday(String? value) => setField<String>('deliveryday', value);

  DateTime? get seeddate => getField<DateTime>('seeddate');
  set seeddate(DateTime? value) => setField<DateTime>('seeddate', value);

  DateTime? get harvestdate => getField<DateTime>('harvestdate');
  set harvestdate(DateTime? value) => setField<DateTime>('harvestdate', value);
}
