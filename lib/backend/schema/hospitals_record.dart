import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hospitals_record.g.dart';

abstract class HospitalsRecord
    implements Built<HospitalsRecord, HospitalsRecordBuilder> {
  static Serializer<HospitalsRecord> get serializer =>
      _$hospitalsRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'contact_number')
  String get contactNumber;

  @nullable
  String get xray;

  @nullable
  @BuiltValueField(wireName: 'blood_test')
  String get bloodTest;

  @nullable
  @BuiltValueField(wireName: 'ct_scan')
  String get ctScan;

  @nullable
  @BuiltValueField(wireName: 'parking_location')
  LatLng get parkingLocation;

  @nullable
  @BuiltValueField(wireName: 'valet_location')
  LatLng get valetLocation;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HospitalsRecordBuilder builder) => builder
    ..name = ''
    ..contactNumber = ''
    ..xray = ''
    ..bloodTest = ''
    ..ctScan = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospitals');

  static Stream<HospitalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HospitalsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HospitalsRecord._();
  factory HospitalsRecord([void Function(HospitalsRecordBuilder) updates]) =
      _$HospitalsRecord;

  static HospitalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHospitalsRecordData({
  String name,
  String contactNumber,
  String xray,
  String bloodTest,
  String ctScan,
  LatLng parkingLocation,
  LatLng valetLocation,
}) =>
    serializers.toFirestore(
        HospitalsRecord.serializer,
        HospitalsRecord((h) => h
          ..name = name
          ..contactNumber = contactNumber
          ..xray = xray
          ..bloodTest = bloodTest
          ..ctScan = ctScan
          ..parkingLocation = parkingLocation
          ..valetLocation = valetLocation));
