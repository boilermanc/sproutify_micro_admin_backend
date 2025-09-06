import '../database.dart';

class RecipesTable extends SupabaseTable<RecipesRow> {
  @override
  String get tableName => 'recipes';

  @override
  RecipesRow createRow(Map<String, dynamic> data) => RecipesRow(data);
}

class RecipesRow extends SupabaseDataRow {
  RecipesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecipesTable();

  int get recipeId => getField<int>('recipe_id')!;
  set recipeId(int value) => setField<int>('recipe_id', value);

  String get recipeName => getField<String>('recipe_name')!;
  set recipeName(String value) => setField<String>('recipe_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
