import '../database.dart';

class VarietiesTable extends SupabaseTable<VarietiesRow> {
  @override
  String get tableName => 'varieties';

  @override
  VarietiesRow createRow(Map<String, dynamic> data) => VarietiesRow(data);
}

class VarietiesRow extends SupabaseDataRow {
  VarietiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VarietiesTable();

  int get varietyid => getField<int>('varietyid')!;
  set varietyid(int value) => setField<int>('varietyid', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageurl => getField<String>('imageurl');
  set imageurl(String? value) => setField<String>('imageurl', value);

  double? get seedQuantityGrams => getField<double>('seed_quantity_grams');
  set seedQuantityGrams(double? value) =>
      setField<double>('seed_quantity_grams', value);

  double? get seedQuantityOunces => getField<double>('seed_quantity_ounces');
  set seedQuantityOunces(double? value) =>
      setField<double>('seed_quantity_ounces', value);

  String? get abbreviation => getField<String>('abbreviation');
  set abbreviation(String? value) => setField<String>('abbreviation', value);

  int? get germinationdays => getField<int>('germinationdays');
  set germinationdays(int? value) => setField<int>('germinationdays', value);

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

  int? get totalgrowthdays => getField<int>('totalgrowthdays');
  set totalgrowthdays(int? value) => setField<int>('totalgrowthdays', value);

  String? get optimaltemperatureF => getField<String>('optimaltemperature_f');
  set optimaltemperatureF(String? value) =>
      setField<String>('optimaltemperature_f', value);

  int? get daysUnderLight => getField<int>('days_under_light');
  set daysUnderLight(int? value) => setField<int>('days_under_light', value);

  int? get blackoutDays => getField<int>('blackout_days');
  set blackoutDays(int? value) => setField<int>('blackout_days', value);
}
