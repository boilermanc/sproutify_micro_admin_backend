import '../database.dart';

class UsertraysTable extends SupabaseTable<UsertraysRow> {
  @override
  String get tableName => 'usertrays';

  @override
  UsertraysRow createRow(Map<String, dynamic> data) => UsertraysRow(data);
}

class UsertraysRow extends SupabaseDataRow {
  UsertraysRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsertraysTable();

  int get trayid => getField<int>('trayid')!;
  set trayid(int value) => setField<int>('trayid', value);

  int? get farmid => getField<int>('farmid');
  set farmid(int? value) => setField<int>('farmid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  int? get batchid => getField<int>('batchid');
  set batchid(int? value) => setField<int>('batchid', value);

  DateTime? get sowndate => getField<DateTime>('sowndate');
  set sowndate(DateTime? value) => setField<DateTime>('sowndate', value);

  DateTime? get harvestdate => getField<DateTime>('harvestdate');
  set harvestdate(DateTime? value) => setField<DateTime>('harvestdate', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get soakingstartdate => getField<DateTime>('soakingstartdate');
  set soakingstartdate(DateTime? value) =>
      setField<DateTime>('soakingstartdate', value);

  DateTime? get soakingenddate => getField<DateTime>('soakingenddate');
  set soakingenddate(DateTime? value) =>
      setField<DateTime>('soakingenddate', value);

  DateTime? get germinationstartdate =>
      getField<DateTime>('germinationstartdate');
  set germinationstartdate(DateTime? value) =>
      setField<DateTime>('germinationstartdate', value);

  DateTime? get germinationenddate => getField<DateTime>('germinationenddate');
  set germinationenddate(DateTime? value) =>
      setField<DateTime>('germinationenddate', value);

  DateTime? get growoutstartdate => getField<DateTime>('growoutstartdate');
  set growoutstartdate(DateTime? value) =>
      setField<DateTime>('growoutstartdate', value);

  DateTime? get growoutenddate => getField<DateTime>('growoutenddate');
  set growoutenddate(DateTime? value) =>
      setField<DateTime>('growoutenddate', value);

  String? get trayuniqueid => getField<String>('trayuniqueid');
  set trayuniqueid(String? value) => setField<String>('trayuniqueid', value);

  String? get currentstep => getField<String>('currentstep');
  set currentstep(String? value) => setField<String>('currentstep', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);
}
