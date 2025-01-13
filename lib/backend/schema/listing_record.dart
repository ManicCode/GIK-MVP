import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingRecord extends FirestoreRecord {
  ListingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ItemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "ItemList" field.
  String? _itemList;
  String get itemList => _itemList ?? '';
  bool hasItemList() => _itemList != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "Condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "Image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "Image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "Image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  void _initializeFields() {
    _itemName = snapshotData['ItemName'] as String?;
    _category = snapshotData['Category'] as String?;
    _itemList = snapshotData['ItemList'] as String?;
    _price = castToType<int>(snapshotData['Price']);
    _condition = snapshotData['Condition'] as String?;
    _bio = snapshotData['Bio'] as String?;
    _image1 = snapshotData['Image1'] as String?;
    _image2 = snapshotData['Image2'] as String?;
    _image3 = snapshotData['Image3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Listing');

  static Stream<ListingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListingRecord.fromSnapshot(s));

  static Future<ListingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListingRecord.fromSnapshot(s));

  static ListingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListingRecordData({
  String? itemName,
  String? category,
  String? itemList,
  int? price,
  String? condition,
  String? bio,
  String? image1,
  String? image2,
  String? image3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ItemName': itemName,
      'Category': category,
      'ItemList': itemList,
      'Price': price,
      'Condition': condition,
      'Bio': bio,
      'Image1': image1,
      'Image2': image2,
      'Image3': image3,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListingRecordDocumentEquality implements Equality<ListingRecord> {
  const ListingRecordDocumentEquality();

  @override
  bool equals(ListingRecord? e1, ListingRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.category == e2?.category &&
        e1?.itemList == e2?.itemList &&
        e1?.price == e2?.price &&
        e1?.condition == e2?.condition &&
        e1?.bio == e2?.bio &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3;
  }

  @override
  int hash(ListingRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.category,
        e?.itemList,
        e?.price,
        e?.condition,
        e?.bio,
        e?.image1,
        e?.image2,
        e?.image3
      ]);

  @override
  bool isValidKey(Object? o) => o is ListingRecord;
}
