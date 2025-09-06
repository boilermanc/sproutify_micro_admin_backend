import '../database.dart';

class SeedingpagedataTable extends SupabaseTable<SeedingpagedataRow> {
  @override
  String get tableName => 'seedingpagedata';

  @override
  SeedingpagedataRow createRow(Map<String, dynamic> data) =>
      SeedingpagedataRow(data);
}

class SeedingpagedataRow extends SupabaseDataRow {
  SeedingpagedataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedingpagedataTable();

  int? get trayid => getField<int>('trayid');
  set trayid(int? value) => setField<int>('trayid', value);

  int? get farmid => getField<int>('farmid');
  set farmid(int? value) => setField<int>('farmid', value);

  String? get farmname => getField<String>('farmname');
  set farmname(String? value) => setField<String>('farmname', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get useremail => getField<String>('useremail');
  set useremail(String? value) => setField<String>('useremail', value);

  int? get varietyid => getField<int>('varietyid');
  set varietyid(int? value) => setField<int>('varietyid', value);

  String? get varietyname => getField<String>('varietyname');
  set varietyname(String? value) => setField<String>('varietyname', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get germinationdays => getField<int>('germinationdays');
  set germinationdays(int? value) => setField<int>('germinationdays', value);

  int? get growthdays => getField<int>('growthdays');
  set growthdays(int? value) => setField<int>('growthdays', value);

  double? get seedquantitypertray => getField<double>('seedquantitypertray');
  set seedquantitypertray(double? value) =>
      setField<double>('seedquantitypertray', value);

  double? get soakingtimehours => getField<double>('soakingtimehours');
  set soakingtimehours(double? value) =>
      setField<double>('soakingtimehours', value);

  String? get optimaltemperature => getField<String>('optimaltemperature');
  set optimaltemperature(String? value) =>
      setField<String>('optimaltemperature', value);

  double? get lightrequirements => getField<double>('lightrequirements');
  set lightrequirements(double? value) =>
      setField<double>('lightrequirements', value);

  String? get careinstructions => getField<String>('careinstructions');
  set careinstructions(String? value) =>
      setField<String>('careinstructions', value);

  String? get imageurl => getField<String>('imageurl');
  set imageurl(String? value) => setField<String>('imageurl', value);

  int? get totalgrowthdays => getField<int>('totalgrowthdays');
  set totalgrowthdays(int? value) => setField<int>('totalgrowthdays', value);

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
}
