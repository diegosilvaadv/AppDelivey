import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PizzaGrandeRecord extends FirestoreRecord {
  PizzaGrandeRecord._(
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

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "doisSabores" field.
  bool? _doisSabores;
  bool get doisSabores => _doisSabores ?? false;
  bool hasDoisSabores() => _doisSabores != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _valor = snapshotData['valor'] as String?;
    _img = snapshotData['img'] as String?;
    _doisSabores = snapshotData['doisSabores'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PizzaGrande');

  static Stream<PizzaGrandeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PizzaGrandeRecord.fromSnapshot(s));

  static Future<PizzaGrandeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PizzaGrandeRecord.fromSnapshot(s));

  static PizzaGrandeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PizzaGrandeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PizzaGrandeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PizzaGrandeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PizzaGrandeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PizzaGrandeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPizzaGrandeRecordData({
  String? titulo,
  String? valor,
  String? img,
  bool? doisSabores,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'valor': valor,
      'img': img,
      'doisSabores': doisSabores,
    }.withoutNulls,
  );

  return firestoreData;
}

class PizzaGrandeRecordDocumentEquality implements Equality<PizzaGrandeRecord> {
  const PizzaGrandeRecordDocumentEquality();

  @override
  bool equals(PizzaGrandeRecord? e1, PizzaGrandeRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.valor == e2?.valor &&
        e1?.img == e2?.img &&
        e1?.doisSabores == e2?.doisSabores;
  }

  @override
  int hash(PizzaGrandeRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.valor, e?.img, e?.doisSabores]);

  @override
  bool isValidKey(Object? o) => o is PizzaGrandeRecord;
}
