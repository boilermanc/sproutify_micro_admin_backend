import '../database.dart';

class CustomersTable extends SupabaseTable<CustomersRow> {
  @override
  String get tableName => 'customers';

  @override
  CustomersRow createRow(Map<String, dynamic> data) => CustomersRow(data);
}

class CustomersRow extends SupabaseDataRow {
  CustomersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomersTable();

  int get customerid => getField<int>('customerid')!;
  set customerid(int value) => setField<int>('customerid', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get contactnumber => getField<String>('contactnumber');
  set contactnumber(String? value) => setField<String>('contactnumber', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get farmid => getField<int>('farmid');
  set farmid(int? value) => setField<int>('farmid', value);

  String? get billingstreet => getField<String>('billingstreet');
  set billingstreet(String? value) => setField<String>('billingstreet', value);

  String? get billingcity => getField<String>('billingcity');
  set billingcity(String? value) => setField<String>('billingcity', value);

  String? get billingstate => getField<String>('billingstate');
  set billingstate(String? value) => setField<String>('billingstate', value);

  String? get billingpostalcode => getField<String>('billingpostalcode');
  set billingpostalcode(String? value) =>
      setField<String>('billingpostalcode', value);

  String? get billingcountry => getField<String>('billingcountry');
  set billingcountry(String? value) =>
      setField<String>('billingcountry', value);

  String? get shippingstreet => getField<String>('shippingstreet');
  set shippingstreet(String? value) =>
      setField<String>('shippingstreet', value);

  String? get shippingcity => getField<String>('shippingcity');
  set shippingcity(String? value) => setField<String>('shippingcity', value);

  String? get shippingstate => getField<String>('shippingstate');
  set shippingstate(String? value) => setField<String>('shippingstate', value);

  String? get shippingpostalcode => getField<String>('shippingpostalcode');
  set shippingpostalcode(String? value) =>
      setField<String>('shippingpostalcode', value);

  String? get shippingcountry => getField<String>('shippingcountry');
  set shippingcountry(String? value) =>
      setField<String>('shippingcountry', value);

  String? get contactname => getField<String>('contactname');
  set contactname(String? value) => setField<String>('contactname', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get billingContactFirstName =>
      getField<String>('billing_contact_first_name');
  set billingContactFirstName(String? value) =>
      setField<String>('billing_contact_first_name', value);

  String? get billingContactLastName =>
      getField<String>('billing_contact_last_name');
  set billingContactLastName(String? value) =>
      setField<String>('billing_contact_last_name', value);

  String? get billingContactEmail => getField<String>('billing_contact_email');
  set billingContactEmail(String? value) =>
      setField<String>('billing_contact_email', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get billingContactPhone => getField<String>('billing_contact_phone');
  set billingContactPhone(String? value) =>
      setField<String>('billing_contact_phone', value);
}
