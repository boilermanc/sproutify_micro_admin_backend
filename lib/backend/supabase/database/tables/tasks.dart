import '../database.dart';

class TasksTable extends SupabaseTable<TasksRow> {
  @override
  String get tableName => 'tasks';

  @override
  TasksRow createRow(Map<String, dynamic> data) => TasksRow(data);
}

class TasksRow extends SupabaseDataRow {
  TasksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TasksTable();

  int get taskid => getField<int>('taskid')!;
  set taskid(int value) => setField<int>('taskid', value);

  int? get trayid => getField<int>('trayid');
  set trayid(int? value) => setField<int>('trayid', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get duedate => getField<DateTime>('duedate');
  set duedate(DateTime? value) => setField<DateTime>('duedate', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get completedByUserid => getField<String>('completed_by_userid');
  set completedByUserid(String? value) =>
      setField<String>('completed_by_userid', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get trayuniqueid => getField<String>('trayuniqueid');
  set trayuniqueid(String? value) => setField<String>('trayuniqueid', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);
}
