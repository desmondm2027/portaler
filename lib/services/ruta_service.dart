import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class RutaService {
  static Future<Database> _openDatabase() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'database', 'albion.db'),
      version: 1,
    );
  }

  static Future<List<String>> getMapNames() async {
    final db = await _openDatabase();
    final List<Map<String, dynamic>> maps = await db.query('avalon_paths_maps');

    return List.generate(maps.length, (i) {
      return maps[i]['name'];
    });
  }
}
