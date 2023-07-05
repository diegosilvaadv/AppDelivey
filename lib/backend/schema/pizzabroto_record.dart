import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PizzabrotoRecord extends FirestoreRecord {
  PizzabrotoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
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

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _valor = snapshotData['valor'] as String?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pizzabroto');

  static Stream<PizzabrotoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PizzabrotoRecord.fromSnapshot(s));

  static Future<PizzabrotoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PizzabrotoRecord.fromSnapshot(s));

  static PizzabrotoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PizzabrotoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PizzabrotoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PizzabrotoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PizzabrotoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PizzabrotoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPizzabrotoRecordData({
  String? titulo,
  String? valor,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'valor': valor,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class PizzabrotoRecordDocumentEquality implements Equality<PizzabrotoRecord> {
  const PizzabrotoRecordDocumentEquality();

  @override
  bool equals(PizzabrotoRecord? e1, PizzabrotoRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.valor == e2?.valor &&
        e1?.img == e2?.img;
  }

  @override
  int hash(PizzabrotoRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.valor, e?.img]);

  @override
  bool isValidKey(Object? o) => o is PizzabrotoRecord;
}
