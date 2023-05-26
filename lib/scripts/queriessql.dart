import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Future<Database> database() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'butterpopcorn.db');

    return openDatabase(path, version: 1, onCreate: (db, version) {
      return db.execute('''
          CREATE TABLE IF NOT EXISTS Users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT,
            password TEXT,
            email TEXT,
            imagem TEXT
          )
        ''');
    });
  }
}
