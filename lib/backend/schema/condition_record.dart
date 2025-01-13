import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConditionRecord extends FirestoreRecord {
  ConditionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "brandNew" field.
  String? _brandNew;
  String get brandNew => _brandNew ?? '';
  bool hasBrandNew() => _brandNew != null;

  // "likeNew" field.
  String? _likeNew;
  String get likeNew => _likeNew ?? '';
  bool hasLikeNew() => _likeNew != null;

  // "fairlyNew" field.
  String? _fairlyNew;
  String get fairlyNew => _fairlyNew ?? '';
  bool hasFairlyNew() => _fairlyNew != null;

  void _initializeFields() {
    _brandNew = snapshotData['brandNew'] as String?;
    _likeNew = snapshotData['likeNew'] as String?;
    _fairlyNew = snapshotData['fairlyNew'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('condition');

  static Stream<ConditionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConditionRecord.fromSnapshot(s));

  static Future<ConditionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConditionRecord.fromSnapshot(s));

  static ConditionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConditionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConditionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConditionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConditionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConditionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConditionRecordData({
  String? brandNew,
  String? likeNew,
  String? fairlyNew,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'brandNew': brandNew,
      'likeNew': likeNew,
      'fairlyNew': fairlyNew,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConditionRecordDocumentEquality implements Equality<ConditionRecord> {
  const ConditionRecordDocumentEquality();

  @override
  bool equals(ConditionRecord? e1, ConditionRecord? e2) {
    return e1?.brandNew == e2?.brandNew &&
        e1?.likeNew == e2?.likeNew &&
        e1?.fairlyNew == e2?.fairlyNew;
  }

  @override
  int hash(ConditionRecord? e) =>
      const ListEquality().hash([e?.brandNew, e?.likeNew, e?.fairlyNew]);

  @override
  bool isValidKey(Object? o) => o is ConditionRecord;
}
