import '../database.dart';

class StepDescriptionsTable extends SupabaseTable<StepDescriptionsRow> {
  @override
  String get tableName => 'step_descriptions';

  @override
  StepDescriptionsRow createRow(Map<String, dynamic> data) =>
      StepDescriptionsRow(data);
}

class StepDescriptionsRow extends SupabaseDataRow {
  StepDescriptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StepDescriptionsTable();

  int get descriptionId => getField<int>('description_id')!;
  set descriptionId(int value) => setField<int>('description_id', value);

  String get descriptionName => getField<String>('description_name')!;
  set descriptionName(String value) =>
      setField<String>('description_name', value);

  String? get descriptionDetails => getField<String>('description_details');
  set descriptionDetails(String? value) =>
      setField<String>('description_details', value);

  String? get stepColor => getField<String>('step_color');
  set stepColor(String? value) => setField<String>('step_color', value);
}
