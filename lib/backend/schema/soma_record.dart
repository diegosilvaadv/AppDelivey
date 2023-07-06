import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SomaRecord extends FirestoreRecord {
  SomaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "valor" field.
  DocumentReference? _valor;
  DocumentReference? get valor => _valor;
  bool hasValor() => _valor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _valor = snapshotData['valor'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('soma')
          : FirebaseFirestore.instance.collectionGroup('soma');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('soma').doc();

  static Stream<SomaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SomaRecord.fromSnapshot(s));

  static Future<SomaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SomaRecord.fromSnapshot(s));

  static SomaRecord fromSnapshot(DocumentSnapshot snapshot) => SomaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SomaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SomaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SomaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SomaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSomaRecordData({
  DocumentReference? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class SomaRecordDocumentEquality implements Equality<SomaRecord> {
  const SomaRecordDocumentEquality();

  @override
  bool equals(SomaRecord? e1, SomaRecord? e2) {
    return e1?.valor == e2?.valor;
  }

  @override
  int hash(SomaRecord? e) => const ListEquality().hash([e?.valor]);

  @override
  bool isValidKey(Object? o) => o is SomaRecord;
}
