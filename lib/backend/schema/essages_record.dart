import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EssagesRecord extends FirestoreRecord {
  EssagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "messages" field.
  String? _messages;
  String get messages => _messages ?? '';
  bool hasMessages() => _messages != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _messages = snapshotData['messages'] as String?;
    _ts = snapshotData['ts'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _user = snapshotData['user'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('essages')
          : FirebaseFirestore.instance.collectionGroup('essages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('essages').doc(id);

  static Stream<EssagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EssagesRecord.fromSnapshot(s));

  static Future<EssagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EssagesRecord.fromSnapshot(s));

  static EssagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EssagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EssagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EssagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EssagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EssagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEssagesRecordData({
  String? messages,
  DateTime? ts,
  String? uid,
  String? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'messages': messages,
      'ts': ts,
      'uid': uid,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class EssagesRecordDocumentEquality implements Equality<EssagesRecord> {
  const EssagesRecordDocumentEquality();

  @override
  bool equals(EssagesRecord? e1, EssagesRecord? e2) {
    return e1?.messages == e2?.messages &&
        e1?.ts == e2?.ts &&
        e1?.uid == e2?.uid &&
        e1?.user == e2?.user;
  }

  @override
  int hash(EssagesRecord? e) =>
      const ListEquality().hash([e?.messages, e?.ts, e?.uid, e?.user]);

  @override
  bool isValidKey(Object? o) => o is EssagesRecord;
}
