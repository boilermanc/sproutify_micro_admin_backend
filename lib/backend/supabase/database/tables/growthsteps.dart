import '../database.dart';

class GrowthstepsTable extends SupabaseTable<GrowthstepsRow> {
  @override
  String get tableName => 'growthsteps';

  @override
  GrowthstepsRow createRow(Map<String, dynamic> data) => GrowthstepsRow(data);
}

class GrowthstepsRow extends SupabaseDataRow {
  GrowthstepsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GrowthstepsTable();

  int get stepid => getField<int>('stepid')!;
  set stepid(int value) => setField<int>('stepid', value);

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  String get stepname => getField<String>('stepname')!;
  set stepname(String value) => setField<String>('stepname', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get durationdays => getField<int>('durationdays');
  set durationdays(int? value) => setField<int>('durationdays', value);

  bool? get isoptional => getField<bool>('isoptional');
  set isoptional(bool? value) => setField<bool>('isoptional', value);
}
