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

  int get farmId => getField<int>('farm_id')!;
  set farmId(int value) => setField<int>('farm_id', value);

  int get varietyId => getField<int>('variety_id')!;
  set varietyId(int value) => setField<int>('variety_id', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);

  String? get varietyImageUrl => getField<String>('variety_image_url');
  set varietyImageUrl(String? value) =>
      setField<String>('variety_image_url', value);
}
