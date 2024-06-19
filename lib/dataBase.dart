// database_helper.dart
import 'dart:async';
import 'package:sqflite/sqflite.dart'; // Importe le package sqflite pour interagir avec SQLite.
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance =
      DatabaseHelper._init(); // Crée une instance singleton de DatabaseHelper.
  static Database?
      _database; 

  DatabaseHelper._init(); // Constructeur privé pour initialiser l'instance singleton.

  Future<Database> get database async {
    if (_database != null) {
      return _database!; 
    }
    _database = await _initDB(
        'my_database.db');
    return _database!; 
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath =
        await getDatabasesPath(); 
    final path = join(dbPath,
        filePath);

    return await openDatabase(path,
        version: 1,
        onCreate:
            _createDB); // Ouvre la base de données et crée les tables si nécessaire.
  }

  Future _createDB(Database db, int version) async {
    // Méthode appelée lors de la création de la base de données.
    await db.execute('''
      CREATE TABLE inscriptions(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, email TEXT, password TEXT); 
    '''); // Utilise des guillemets triples pour une chaîne multiligne contenant les instructions SQL.
  }

  Future<int> insertData(String username, String email, String password) async {
    final db = await DatabaseHelper.instance.database;
    int id = await db.insert(
      'inscriptions', 
      {
        'username':username,
        'email': email,
        'password': password,
      },
      conflictAlgorithm: ConflictAlgorithm
          .replace, 
    );
    return id;
  }

  Future<bool> verifyUserLogin(String eMail, String password) async {
    final db = await database;
    final res = await db.query(
      'inscriptions', 
      where: 'email = ? AND password = ?',
      whereArgs: [eMail, password],
    );
    return res.isNotEmpty; // Retourne vrai si l'utilisateur est trouvé.
  }

  Future<bool> verifyUserExist(String username, String email) async {
    final db = await database;
    final res = await db.query(
      'inscriptions', 
      where: 'username = ? OR email = ?',
      whereArgs: [username, email],
    );
    return res.isNotEmpty; // Retourne vrai si l'utilisateur est trouvé.
  }
 
  Future close() async {
    final db = await instance
        .database; 
    db.close(); 
  }
}
