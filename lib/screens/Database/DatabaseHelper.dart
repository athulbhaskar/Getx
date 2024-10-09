import 'dart:io';

import 'package:initialsetup/screens/Data/FlagDetailsModel.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Databasehelper {
  static Database? flagsDatabase;
  static Databasehelper? flagDatabaseHelper;

  String table = 'flagsTable';
  String flagPng = 'flagPng';
  String name = 'name';
  String subregion = 'subregion';

  Databasehelper._createInstance();

  static final Databasehelper db = Databasehelper._createInstance();


  factory Databasehelper(){
    if (flagDatabaseHelper == null) {
      Databasehelper db = Databasehelper._createInstance();
    }
    return db;
  }

  Future<Database> get database async {
    flagsDatabase ??= await initializeDatabase();
    return flagsDatabase!;
  }

  Future<Database> initializeDatabase() async {
    String path = join(await getDatabasesPath(), 'flags.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table  (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        $name TEXT, $subregion TEXT ,$flagPng TEXT
      )
    ''');
  }


  Future<int> insertCountry(FlagResponse flagResponse) async {
    final db = await database;
    return await db.insert(table, flagResponse.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<FlagResponse>> getCountries() async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.query(table);
    return result.map((map) => FlagResponse.fromJson(map)).toList();
  }

}
