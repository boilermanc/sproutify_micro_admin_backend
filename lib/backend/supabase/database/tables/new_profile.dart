import '../database.dart';

class NewProfileTable extends SupabaseTable<NewProfileRow> {
  @override
  String get tableName => 'new_profile';

  @override
  NewProfileRow createRow(Map<String, dynamic> data) => NewProfileRow(data);
}

class NewProfileRow extends SupabaseDataRow {
  NewProfileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NewProfileTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userUuid => getField<String>('user_uuid')!;
  set userUuid(String value) => setField<String>('user_uuid', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  bool? get isNew => getField<bool>('is_new');
  set isNew(bool? value) => setField<bool>('is_new', value);
}
