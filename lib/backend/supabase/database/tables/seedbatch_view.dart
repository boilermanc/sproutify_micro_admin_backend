import '../database.dart';

class SeedbatchViewTable extends SupabaseTable<SeedbatchViewRow> {
  @override
  String get tableName => 'seedbatch_view';

  @override
  SeedbatchViewRow createRow(Map<String, dynamic> data) =>
      SeedbatchViewRow(data);
}

class SeedbatchViewRow extends SupabaseDataRow {
  SeedbatchViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedbatchViewTable();

  int? get batchid => getField<int>('batchid');
  set batchid(int? value) => setField<int>('batchid', value);

  DateTime? get purchasedate => getField<DateTime>('purchasedate');
  set purchasedate(DateTime? value) =>
      setField<DateTime>('purchasedate', value);

  double? get totalprice => getField<double>('totalprice');
  set totalprice(double? value) => setField<double>('totalprice', value);

  double? get priceperounce => getField<double>('priceperounce');
  set priceperounce(double? value) => setField<double>('priceperounce', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  String? get lotNumber => getField<String>('lot_number');
  set lotNumber(String? value) => setField<String>('lot_number', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  double? get germinationRate => getField<double>('germination_rate');
  set germinationRate(double? value) =>
      setField<double>('germination_rate', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);

  String? get varietyDescription => getField<String>('variety_description');
  set varietyDescription(String? value) =>
      setField<String>('variety_description', value);

  int? get germinationdays => getField<int>('germinationdays');
  set germinationdays(int? value) => setField<int>('germinationdays', value);

  int? get vendorid => getField<int>('vendorid');
  set vendorid(int? value) => setField<int>('vendorid', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get origin => getField<String>('origin');
  set origin(String? value) => setField<String>('origin', value);

  double? get pureSeed => getField<double>('pure_seed');
  set pureSeed(double? value) => setField<double>('pure_seed', value);

  double? get weeds => getField<double>('weeds');
  set weeds(double? value) => setField<double>('weeds', value);

  double? get other => getField<double>('other');
  set other(double? value) => setField<double>('other', value);

  double? get inert => getField<double>('inert');
  set inert(double? value) => setField<double>('inert', value);

  String? get noxious => getField<String>('noxious');
  set noxious(String? value) => setField<String>('noxious', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  DateTime? get germDate => getField<DateTime>('germ_date');
  set germDate(DateTime? value) => setField<DateTime>('germ_date', value);

  double? get hardDormant => getField<double>('hard_dormant');
  set hardDormant(double? value) => setField<double>('hard_dormant', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get updatedBy => getField<String>('updated_by');
  set updatedBy(String? value) => setField<String>('updated_by', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
