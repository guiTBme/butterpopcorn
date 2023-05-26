// Define a function that inserts dogs into the database
import 'package:prova_final/persistence/client_model.dart';
import 'package:prova_final/scripts/queriessql.dart';
import 'package:sqflite/sqflite.dart';

Future<void> insertUser(UsersModel usersModel) async {
  // Get a reference to the database.
  var database = DBHelper.database();
  final db = await database;

  await db.insert(
    'Users',
    usersModel.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> updateUser(UsersModel user) async {
  var database = DBHelper.database();
  final db = await database;

  // Update the given Dog.
  await db.update(
    'Users',
    user.toMap(),
    where: 'id = ?',
    whereArgs: [user.id],
  );
}

Future<void> deleteUser(int id) async {
  var database = DBHelper.database();
  final db = await database;

  await db.delete(
    'Users',
    where: 'id = ?',
    whereArgs: [id],
  );
}
