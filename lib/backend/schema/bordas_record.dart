import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BordasRecord extends FirestoreRecord {
  BordasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "valor" field.
  String? _valor;
  String get valor => _valor ?? '';
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _valor = snapshotData['valor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bordas');

  static Stream<BordasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BordasRecord.fromSnapshot(s));

  static Future<BordasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BordasRecord.fromSnapshot(s));

  static BordasRecord fromSnapshot(DocumentSnapshot snapshot) => BordasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BordasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BordasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BordasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BordasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBordasRecordData({
  String? titulo,
  String? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class BordasRecordDocumentEquality implements Equality<BordasRecord> {
  const BordasRecordDocumentEquality();

  @override
  bool equals(BordasRecord? e1, BordasRecord? e2) {
    return e1?.titulo == e2?.titulo && e1?.valor == e2?.valor;
  }

  @override
  int hash(BordasRecord? e) => const ListEquality().hash([e?.titulo, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is BordasRecord;
}
