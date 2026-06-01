import 'package:login_example/models/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// -- function to initialize the database --
Future<Database> initDatabase() async {
  final path = join(
    await getDatabasesPath(),
    'operations_db.db',
  );
  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        'CREATE TABLE operations(id INTEGER PRIMARY KEY, type TEXT, category TEXT, count DOUBLE, date TEXT)'
      );     
    },
  );
}

Future<void> insertUser(User user) async {
  final db = await database;
  await db.insert(
    'users',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace  
  );
}



final Future<Database> database = initDatabase();