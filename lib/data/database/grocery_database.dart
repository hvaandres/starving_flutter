import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

class GroceryDatabase {
  static final GroceryDatabase _instance = GroceryDatabase._internal();
  factory GroceryDatabase() => _instance;
  GroceryDatabase._internal();

  Database? db;

  Future<Database> get database async {
    if (db != null) return db!;
    db = await _initDb();
    return db!;
  }

  Future<List<Grocery>> getGroceries() async {
    final db = await database;
    final List<Map<String, dynamic>> groceries = await db.query('groceries');
    return groceries.map((grocery) => Grocery.fromMap(grocery)).toList();
  }

  Future<int> insertGrocery(Grocery grocery) async {
    final db = await database;
    return await db.insert('groceries', grocery.toMap());
  }

  Future<int> deleteGrocecy(int id) async {
    final db = await database;
    return await db.delete('groceries', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateGrocery(Grocery grocery) async {
    final db = await database;
    return await db.update(
      'groceries',
      grocery.toMap(),
      where: 'id = ?',
      whereArgs: [grocery.id],
    );
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'groceries.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE groceries(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            is_completed INTEGER
          )
        ''');
      },
    );
  }
}
