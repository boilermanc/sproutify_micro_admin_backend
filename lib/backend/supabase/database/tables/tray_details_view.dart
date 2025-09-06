import '../database.dart';

class TrayDetailsViewTable extends SupabaseTable<TrayDetailsViewRow> {
  @override
  String get tableName => 'tray_details_view';

  @override
  TrayDetailsViewRow createRow(Map<String, dynamic> data) =>
      TrayDetailsViewRow(data);
}

class TrayDetailsViewRow extends SupabaseDataRow {
  TrayDetailsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrayDetailsViewTable();

  String? get trayuniqueid => getField<String>('trayuniqueid');
  set trayuniqueid(String? value) => setField<String>('trayuniqueid', value);

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

  String? get trayStatus => getField<String>('tray_status');
  set trayStatus(String? value) => setField<String>('tray_status', value);

  String? get variety => getField<String>('variety');
  set variety(String? value) => setField<String>('variety', value);

  String? get seededBy => getField<String>('seeded_by');
  set seededBy(String? value) => setField<String>('seeded_by', value);

  String? get seederEmail => getField<String>('seeder_email');
  set seederEmail(String? value) => setField<String>('seeder_email', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get farmname => getField<String>('farmname');
  set farmname(String? value) => setField<String>('farmname', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);
}
