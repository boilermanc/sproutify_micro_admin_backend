import '../database.dart';

class VendorsTable extends SupabaseTable<VendorsRow> {
  @override
  String get tableName => 'vendors';

  @override
  VendorsRow createRow(Map<String, dynamic> data) => VendorsRow(data);
}

class VendorsRow extends SupabaseDataRow {
  VendorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorsTable();

  int get vendorid => getField<int>('vendorid')!;
  set vendorid(int value) => setField<int>('vendorid', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

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

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
