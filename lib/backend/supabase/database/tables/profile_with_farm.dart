import '../database.dart';

class ProfileWithFarmTable extends SupabaseTable<ProfileWithFarmRow> {
  @override
  String get tableName => 'profile_with_farm';

  @override
  ProfileWithFarmRow createRow(Map<String, dynamic> data) =>
      ProfileWithFarmRow(data);
}

class ProfileWithFarmRow extends SupabaseDataRow {
  ProfileWithFarmRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileWithFarmTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get farmid => getField<int>('farmid');
  set farmid(int? value) => setField<int>('farmid', value);

  String? get farmname => getField<String>('farmname');
  set farmname(String? value) => setField<String>('farmname', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);
}
