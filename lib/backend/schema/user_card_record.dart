import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCardRecord extends FirestoreRecord {
  UserCardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  String? _preco;
  String get preco => _preco ?? '';
  bool hasPreco() => _preco != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "tipo" field.
  List<String>? _tipo;
  List<String> get tipo => _tipo ?? const [];
  bool hasTipo() => _tipo != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _preco = snapshotData['preco'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _tipo = getDataList(snapshotData['tipo']);
    _img = snapshotData['img'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_card');

  static Stream<UserCardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCardRecord.fromSnapshot(s));

  static Future<UserCardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCardRecord.fromSnapshot(s));

  static UserCardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCardRecordData({
  String? nome,
  String? preco,
  String? descricao,
  String? img,
  DocumentReference? user,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'preco': preco,
      'descricao': descricao,
      'img': img,
      'user': user,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCardRecordDocumentEquality implements Equality<UserCardRecord> {
  const UserCardRecordDocumentEquality();

  @override
  bool equals(UserCardRecord? e1, UserCardRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.descricao == e2?.descricao &&
        listEquality.equals(e1?.tipo, e2?.tipo) &&
        e1?.img == e2?.img &&
        e1?.user == e2?.user &&
        e1?.time == e2?.time;
  }

  @override
  int hash(UserCardRecord? e) => const ListEquality().hash(
      [e?.nome, e?.preco, e?.descricao, e?.tipo, e?.img, e?.user, e?.time]);

  @override
  bool isValidKey(Object? o) => o is UserCardRecord;
}
