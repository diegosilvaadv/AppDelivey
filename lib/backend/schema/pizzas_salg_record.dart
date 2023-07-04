import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PizzasSalgRecord extends FirestoreRecord {
  PizzasSalgRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "preco" field.
  String? _preco;
  String get preco => _preco ?? '';
  bool hasPreco() => _preco != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _img = snapshotData['img'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _preco = snapshotData['preco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PizzasSalg');

  static Stream<PizzasSalgRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PizzasSalgRecord.fromSnapshot(s));

  static Future<PizzasSalgRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PizzasSalgRecord.fromSnapshot(s));

  static PizzasSalgRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PizzasSalgRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PizzasSalgRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PizzasSalgRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PizzasSalgRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PizzasSalgRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPizzasSalgRecordData({
  String? nome,
  String? img,
  String? descricao,
  String? preco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'img': img,
      'descricao': descricao,
      'preco': preco,
    }.withoutNulls,
  );

  return firestoreData;
}

class PizzasSalgRecordDocumentEquality implements Equality<PizzasSalgRecord> {
  const PizzasSalgRecordDocumentEquality();

  @override
  bool equals(PizzasSalgRecord? e1, PizzasSalgRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.img == e2?.img &&
        e1?.descricao == e2?.descricao &&
        e1?.preco == e2?.preco;
  }

  @override
  int hash(PizzasSalgRecord? e) =>
      const ListEquality().hash([e?.nome, e?.img, e?.descricao, e?.preco]);

  @override
  bool isValidKey(Object? o) => o is PizzasSalgRecord;
}
