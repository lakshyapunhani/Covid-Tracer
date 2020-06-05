import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

// Define tables that can model a database of recipes.

class Entries extends Table{
  TextColumn get idType => text().nullable()();
  TextColumn get idNumber => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get phoneNumber => text().nullable()();
  DateTimeColumn get timestamp => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {timestamp};

}

@UseMoor(
  tables: [Entries],
)
class MoorDatabase extends _$MoorDatabase {
  MoorDatabase()
  // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite',
    // Good for debugging - prints SQL in the console
    logStatements: true,
  )));

  @override
  int get schemaVersion => 1;

  Future<List<Entrie>> getAllEntries() => select(entries).get();
  Future insertEntry(Entrie entry) => into(entries).insert(entry);
}