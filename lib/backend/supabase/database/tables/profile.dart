import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileTable();

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

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

  int? get farmid => getField<int>('farmid');
  set farmid(int? value) => setField<int>('farmid', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  bool? get isactive => getField<bool>('isactive');
  set isactive(bool? value) => setField<bool>('isactive', value);
}
