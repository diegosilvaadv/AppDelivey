import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SaboresRecord extends FirestoreRecord {
  SaboresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sabor" field.
  String? _sabor;
  String get sabor => _sabor ?? '';
  bool hasSabor() => _sabor != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "preco" field.
  String? _preco;
  String get preco => _preco ?? '';
  bool hasPreco() => _preco != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "Marcacao" field.
  bool? _marcacao;
  bool get marcacao => _marcacao ?? false;
  bool hasMarcacao() => _marcacao != null;

  // "type" field.
  List<String>? _type;
  List<String> get type => _type ?? const [];
  bool hasType() => _type != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _sabor = snapshotData['sabor'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _preco = snapshotData['preco'] as String?;
    _img = snapshotData['img'] as String?;
    _marcacao = snapshotData['Marcacao'] as bool?;
    _type = getDataList(snapshotData['type']);
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sabores');

  static Stream<SaboresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SaboresRecord.fromSnapshot(s));

  static Future<SaboresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SaboresRecord.fromSnapshot(s));

  static SaboresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SaboresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SaboresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SaboresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SaboresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SaboresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSaboresRecordData({
  String? sabor,
  String? descricao,
  String? preco,
  String? img,
  bool? marcacao,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sabor': sabor,
      'descricao': descricao,
      'preco': preco,
      'img': img,
      'Marcacao': marcacao,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class SaboresRecordDocumentEquality implements Equality<SaboresRecord> {
  const SaboresRecordDocumentEquality();

  @override
  bool equals(SaboresRecord? e1, SaboresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sabor == e2?.sabor &&
        e1?.descricao == e2?.descricao &&
        e1?.preco == e2?.preco &&
        e1?.img == e2?.img &&
        e1?.marcacao == e2?.marcacao &&
        listEquality.equals(e1?.type, e2?.type) &&
        e1?.price == e2?.price;
  }

  @override
  int hash(SaboresRecord? e) => const ListEquality().hash([
        e?.sabor,
        e?.descricao,
        e?.preco,
        e?.img,
        e?.marcacao,
        e?.type,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is SaboresRecord;
}
