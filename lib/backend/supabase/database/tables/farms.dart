import '../database.dart';

class FarmsTable extends SupabaseTable<FarmsRow> {
  @override
  String get tableName => 'farms';

  @override
  FarmsRow createRow(Map<String, dynamic> data) => FarmsRow(data);
}

class FarmsRow extends SupabaseDataRow {
  FarmsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmsTable();

  int get farmid => getField<int>('farmid')!;
  set farmid(int value) => setField<int>('farmid', value);

  String get farmname => getField<String>('farmname')!;
  set farmname(String value) => setField<String>('farmname', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get postalcode => getField<String>('postalcode');
  set postalcode(String? value) => setField<String>('postalcode', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get numberOfEmployees => getField<String>('number_of_employees');
  set numberOfEmployees(String? value) =>
      setField<String>('number_of_employees', value);
}
