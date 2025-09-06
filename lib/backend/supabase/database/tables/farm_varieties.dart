import '../database.dart';

class FarmVarietiesTable extends SupabaseTable<FarmVarietiesRow> {
  @override
  String get tableName => 'farm_varieties';

  @override
  FarmVarietiesRow createRow(Map<String, dynamic> data) =>
      FarmVarietiesRow(data);
}

class FarmVarietiesRow extends SupabaseDataRow {
  FarmVarietiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmVarietiesTable();

  String get farmUuid => getField<String>('farm_uuid')!;
  set farmUuid(String value) => setField<String>('farm_uuid', value);

  int get varietyId => getField<int>('variety_id')!;
  set varietyId(int value) => setField<int>('variety_id', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);
}
