import 'package:login_example/models/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// -- function to initialize the database --
Future<Database> initDatabase() async {
  final path = join(
    await getDatabasesPath(),
    'users_db.db',
  );
  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, login TEXT, password TEXT)'
      );     
    },
  );
}

Future<void> insertUser(User user) async {
  final db = await database;
  await db.insert(
    'users',
    user.toMap(),
    //conflictAlgorithm: ConflictAlgorithm.replace  
  );
}

Future<void> deleteUser(User user) async {
  final db = await database;
  await db.delete(
    'users',
    where: 'id = ?',
    whereArgs: [user.id]
  );
}

Future<void> updateUser(User user) async {
  final db = await database;
  await db.update(
    'users',
    user.toMap(),
    where: 'id = ?',
    whereArgs: [user.id]
  );
}

final Future<Database> database = initDatabase();