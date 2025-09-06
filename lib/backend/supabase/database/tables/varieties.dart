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
}
