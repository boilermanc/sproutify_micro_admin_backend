import '../database.dart';

class StepsTable extends SupabaseTable<StepsRow> {
  @override
  String get tableName => 'steps';

  @override
  StepsRow createRow(Map<String, dynamic> data) => StepsRow(data);
}

class StepsRow extends SupabaseDataRow {
  StepsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StepsTable();

  int get stepId => getField<int>('step_id')!;
  set stepId(int value) => setField<int>('step_id', value);

  int get recipeId => getField<int>('recipe_id')!;
  set recipeId(int value) => setField<int>('recipe_id', value);

  String get stepName => getField<String>('step_name')!;
  set stepName(String value) => setField<String>('step_name', value);

  int get sequenceOrder => getField<int>('sequence_order')!;
  set sequenceOrder(int value) => setField<int>('sequence_order', value);

  double? get duration => getField<double>('duration');
  set duration(double? value) => setField<double>('duration', value);

  String? get durationUnit => getField<String>('duration_unit');
  set durationUnit(String? value) => setField<String>('duration_unit', value);

  int? get descriptionId => getField<int>('description_id');
  set descriptionId(int? value) => setField<int>('description_id', value);

  String get farmUuid => getField<String>('farm_uuid')!;
  set farmUuid(String value) => setField<String>('farm_uuid', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get timeCreated => getField<DateTime>('time_created');
  set timeCreated(DateTime? value) => setField<DateTime>('time_created', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  String? get descriptionName => getField<String>('description_name');
  set descriptionName(String? value) =>
      setField<String>('description_name', value);

  String? get stepColor => getField<String>('step_color');
  set stepColor(String? value) => setField<String>('step_color', value);
}
