import '../database.dart';

class TraygrowthstagesTable extends SupabaseTable<TraygrowthstagesRow> {
  @override
  String get tableName => 'traygrowthstages';

  @override
  TraygrowthstagesRow createRow(Map<String, dynamic> data) =>
      TraygrowthstagesRow(data);
}

class TraygrowthstagesRow extends SupabaseDataRow {
  TraygrowthstagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TraygrowthstagesTable();

  int? get trayid => getField<int>('trayid');
  set trayid(int? value) => setField<int>('trayid', value);

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  String? get varietyname => getField<String>('varietyname');
  set varietyname(String? value) => setField<String>('varietyname', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get seededby => getField<String>('seededby');
  set seededby(String? value) => setField<String>('seededby', value);

  DateTime? get sowndate => getField<DateTime>('sowndate');
  set sowndate(DateTime? value) => setField<DateTime>('sowndate', value);

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

  DateTime? get harvestdate => getField<DateTime>('harvestdate');
  set harvestdate(DateTime? value) => setField<DateTime>('harvestdate', value);
}
