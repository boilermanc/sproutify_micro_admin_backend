import '../database.dart';

class TrayStepsTable extends SupabaseTable<TrayStepsRow> {
  @override
  String get tableName => 'tray_steps';

  @override
  TrayStepsRow createRow(Map<String, dynamic> data) => TrayStepsRow(data);
}

class TrayStepsRow extends SupabaseDataRow {
  TrayStepsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrayStepsTable();

  int get trayStepId => getField<int>('tray_step_id')!;
  set trayStepId(int value) => setField<int>('tray_step_id', value);

  int? get trayId => getField<int>('tray_id');
  set trayId(int? value) => setField<int>('tray_id', value);

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
}
