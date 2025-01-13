import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemRecord extends FirestoreRecord {
  ItemRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "categoryRef" field.
  String? _categoryRef;
  String get categoryRef => _categoryRef ?? '';
  bool hasCategoryRef() => _categoryRef != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _categoryRef = snapshotData['categoryRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item');

  static Stream<ItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemRecord.fromSnapshot(s));

  static Future<ItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemRecord.fromSnapshot(s));

  static ItemRecord fromSnapshot(DocumentSnapshot snapshot) => ItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemRecordData({
  String? output,
  String? categoryRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'categoryRef': categoryRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemRecordDocumentEquality implements Equality<ItemRecord> {
  const ItemRecordDocumentEquality();

  @override
  bool equals(ItemRecord? e1, ItemRecord? e2) {
    return e1?.output == e2?.output && e1?.categoryRef == e2?.categoryRef;
  }

  @override
  int hash(ItemRecord? e) =>
      const ListEquality().hash([e?.output, e?.categoryRef]);

  @override
  bool isValidKey(Object? o) => o is ItemRecord;
}
