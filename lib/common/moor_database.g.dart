// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Entrie extends DataClass implements Insertable<Entrie> {
  final String idType;
  final String idNumber;
  final String name;
  final String address;
  final String phoneNumber;
  final DateTime timestamp;
  Entrie(
      {this.idType,
      this.idNumber,
      this.name,
      this.address,
      this.phoneNumber,
      this.timestamp});
  factory Entrie.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Entrie(
      idType:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}id_type']),
      idNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_number']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      address:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}address']),
      phoneNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      timestamp: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp']),
    );
  }
  factory Entrie.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Entrie(
      idType: serializer.fromJson<String>(json['idType']),
      idNumber: serializer.fromJson<String>(json['idNumber']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idType': serializer.toJson<String>(idType),
      'idNumber': serializer.toJson<String>(idNumber),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'timestamp': serializer.toJson<DateTime>(timestamp),
    };
  }

  @override
  EntriesCompanion createCompanion(bool nullToAbsent) {
    return EntriesCompanion(
      idType:
          idType == null && nullToAbsent ? const Value.absent() : Value(idType),
      idNumber: idNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(idNumber),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
    );
  }

  Entrie copyWith(
          {String idType,
          String idNumber,
          String name,
          String address,
          String phoneNumber,
          DateTime timestamp}) =>
      Entrie(
        idType: idType ?? this.idType,
        idNumber: idNumber ?? this.idNumber,
        name: name ?? this.name,
        address: address ?? this.address,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        timestamp: timestamp ?? this.timestamp,
      );
  @override
  String toString() {
    return (StringBuffer('Entrie(')
          ..write('idType: $idType, ')
          ..write('idNumber: $idNumber, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idType.hashCode,
      $mrjc(
          idNumber.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(address.hashCode,
                  $mrjc(phoneNumber.hashCode, timestamp.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Entrie &&
          other.idType == this.idType &&
          other.idNumber == this.idNumber &&
          other.name == this.name &&
          other.address == this.address &&
          other.phoneNumber == this.phoneNumber &&
          other.timestamp == this.timestamp);
}

class EntriesCompanion extends UpdateCompanion<Entrie> {
  final Value<String> idType;
  final Value<String> idNumber;
  final Value<String> name;
  final Value<String> address;
  final Value<String> phoneNumber;
  final Value<DateTime> timestamp;
  const EntriesCompanion({
    this.idType = const Value.absent(),
    this.idNumber = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  EntriesCompanion.insert({
    this.idType = const Value.absent(),
    this.idNumber = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  EntriesCompanion copyWith(
      {Value<String> idType,
      Value<String> idNumber,
      Value<String> name,
      Value<String> address,
      Value<String> phoneNumber,
      Value<DateTime> timestamp}) {
    return EntriesCompanion(
      idType: idType ?? this.idType,
      idNumber: idNumber ?? this.idNumber,
      name: name ?? this.name,
      address: address ?? this.address,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}

class $EntriesTable extends Entries with TableInfo<$EntriesTable, Entrie> {
  final GeneratedDatabase _db;
  final String _alias;
  $EntriesTable(this._db, [this._alias]);
  final VerificationMeta _idTypeMeta = const VerificationMeta('idType');
  GeneratedTextColumn _idType;
  @override
  GeneratedTextColumn get idType => _idType ??= _constructIdType();
  GeneratedTextColumn _constructIdType() {
    return GeneratedTextColumn(
      'id_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idNumberMeta = const VerificationMeta('idNumber');
  GeneratedTextColumn _idNumber;
  @override
  GeneratedTextColumn get idNumber => _idNumber ??= _constructIdNumber();
  GeneratedTextColumn _constructIdNumber() {
    return GeneratedTextColumn(
      'id_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn(
      'address',
      $tableName,
      true,
    );
  }

  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  GeneratedTextColumn _phoneNumber;
  @override
  GeneratedTextColumn get phoneNumber =>
      _phoneNumber ??= _constructPhoneNumber();
  GeneratedTextColumn _constructPhoneNumber() {
    return GeneratedTextColumn(
      'phone_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  GeneratedDateTimeColumn _timestamp;
  @override
  GeneratedDateTimeColumn get timestamp => _timestamp ??= _constructTimestamp();
  GeneratedDateTimeColumn _constructTimestamp() {
    return GeneratedDateTimeColumn(
      'timestamp',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idType, idNumber, name, address, phoneNumber, timestamp];
  @override
  $EntriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'entries';
  @override
  final String actualTableName = 'entries';
  @override
  VerificationContext validateIntegrity(EntriesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.idType.present) {
      context.handle(
          _idTypeMeta, idType.isAcceptableValue(d.idType.value, _idTypeMeta));
    }
    if (d.idNumber.present) {
      context.handle(_idNumberMeta,
          idNumber.isAcceptableValue(d.idNumber.value, _idNumberMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    }
    if (d.address.present) {
      context.handle(_addressMeta,
          address.isAcceptableValue(d.address.value, _addressMeta));
    }
    if (d.phoneNumber.present) {
      context.handle(_phoneNumberMeta,
          phoneNumber.isAcceptableValue(d.phoneNumber.value, _phoneNumberMeta));
    }
    if (d.timestamp.present) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableValue(d.timestamp.value, _timestampMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {timestamp};
  @override
  Entrie map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Entrie.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(EntriesCompanion d) {
    final map = <String, Variable>{};
    if (d.idType.present) {
      map['id_type'] = Variable<String, StringType>(d.idType.value);
    }
    if (d.idNumber.present) {
      map['id_number'] = Variable<String, StringType>(d.idNumber.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.address.present) {
      map['address'] = Variable<String, StringType>(d.address.value);
    }
    if (d.phoneNumber.present) {
      map['phone_number'] = Variable<String, StringType>(d.phoneNumber.value);
    }
    if (d.timestamp.present) {
      map['timestamp'] = Variable<DateTime, DateTimeType>(d.timestamp.value);
    }
    return map;
  }

  @override
  $EntriesTable createAlias(String alias) {
    return $EntriesTable(_db, alias);
  }
}

abstract class _$MoorDatabase extends GeneratedDatabase {
  _$MoorDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $EntriesTable _entries;
  $EntriesTable get entries => _entries ??= $EntriesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [entries];
}
