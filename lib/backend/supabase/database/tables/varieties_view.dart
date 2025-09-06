import '../database.dart';

class VarietiesViewTable extends SupabaseTable<VarietiesViewRow> {
  @override
  String get tableName => 'varieties_view';

  @override
  VarietiesViewRow createRow(Map<String, dynamic> data) =>
      VarietiesViewRow(data);
}

class VarietiesViewRow extends SupabaseDataRow {
  VarietiesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VarietiesViewTable();

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageurl => getField<String>('imageurl');
  set imageurl(String? value) => setField<String>('imageurl', value);

  String? get abbreviation => getField<String>('abbreviation');
  set abbreviation(String? value) => setField<String>('abbreviation', value);

  int? get germinationdays => getField<int>('germinationdays');
  set germinationdays(int? value) => setField<int>('germinationdays', value);

  int? get totalgrowthdays => getField<int>('totalgrowthdays');
  set totalgrowthdays(int? value) => setField<int>('totalgrowthdays', value);

  String? get careinstructions => getField<String>('careinstructions');
  set careinstructions(String? value) =>
      setField<String>('careinstructions', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
