import '../database.dart';

class DailyTasksViewTable extends SupabaseTable<DailyTasksViewRow> {
  @override
  String get tableName => 'daily_tasks_view';

  @override
  DailyTasksViewRow createRow(Map<String, dynamic> data) =>
      DailyTasksViewRow(data);
}

class DailyTasksViewRow extends SupabaseDataRow {
  DailyTasksViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DailyTasksViewTable();

  int? get trayStepId => getField<int>('tray_step_id');
  set trayStepId(int? value) => setField<int>('tray_step_id', value);

  int? get trayId => getField<int>('tray_id');
  set trayId(int? value) => setField<int>('tray_id', value);

  String? get trayUniqueId => getField<String>('tray_unique_id');
  set trayUniqueId(String? value) => setField<String>('tray_unique_id', value);

  int? get stepId => getField<int>('step_id');
  set stepId(int? value) => setField<int>('step_id', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  DateTime? get scheduledDate => getField<DateTime>('scheduled_date');
  set scheduledDate(DateTime? value) =>
      setField<DateTime>('scheduled_date', value);

  DateTime? get completedDate => getField<DateTime>('completed_date');
  set completedDate(DateTime? value) =>
      setField<DateTime>('completed_date', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get stepName => getField<String>('step_name');
  set stepName(String? value) => setField<String>('step_name', value);

  int? get sequenceOrder => getField<int>('sequence_order');
  set sequenceOrder(int? value) => setField<int>('sequence_order', value);

  double? get duration => getField<double>('duration');
  set duration(double? value) => setField<double>('duration', value);

  String? get durationUnit => getField<String>('duration_unit');
  set durationUnit(String? value) => setField<String>('duration_unit', value);

  int? get descriptionId => getField<int>('description_id');
  set descriptionId(int? value) => setField<int>('description_id', value);

  String? get descriptionName => getField<String>('description_name');
  set descriptionName(String? value) =>
      setField<String>('description_name', value);

  String? get stepColor => getField<String>('step_color');
  set stepColor(String? value) => setField<String>('step_color', value);

  String? get recipeName => getField<String>('recipe_name');
  set recipeName(String? value) => setField<String>('recipe_name', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);

  String? get farmname => getField<String>('farmname');
  set farmname(String? value) => setField<String>('farmname', value);
}
