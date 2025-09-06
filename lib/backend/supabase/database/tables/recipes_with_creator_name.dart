import '../database.dart';

class RecipesWithCreatorNameTable
    extends SupabaseTable<RecipesWithCreatorNameRow> {
  @override
  String get tableName => 'recipes_with_creator_name';

  @override
  RecipesWithCreatorNameRow createRow(Map<String, dynamic> data) =>
      RecipesWithCreatorNameRow(data);
}

class RecipesWithCreatorNameRow extends SupabaseDataRow {
  RecipesWithCreatorNameRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecipesWithCreatorNameTable();

  int? get recipeId => getField<int>('recipe_id');
  set recipeId(int? value) => setField<int>('recipe_id', value);

  String? get recipeName => getField<String>('recipe_name');
  set recipeName(String? value) => setField<String>('recipe_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get farmUuid => getField<String>('farm_uuid');
  set farmUuid(String? value) => setField<String>('farm_uuid', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get creatorName => getField<String>('creator_name');
  set creatorName(String? value) => setField<String>('creator_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get varietyName => getField<String>('variety_name');
  set varietyName(String? value) => setField<String>('variety_name', value);

  String? get isActive => getField<String>('is_active');
  set isActive(String? value) => setField<String>('is_active', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
