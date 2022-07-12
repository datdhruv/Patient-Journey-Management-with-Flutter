import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appointments_record.g.dart';

abstract class AppointmentsRecord
    implements Built<AppointmentsRecord, AppointmentsRecordBuilder> {
  static Serializer<AppointmentsRecord> get serializer =>
      _$appointmentsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'patient_ref')
  DocumentReference get patientRef;

  @nullable
  @BuiltValueField(wireName: 'token_num')
  String get tokenNum;

  @nullable
  String get doctor;

  @nullable
  bool get valet;

  @nullable
  DocumentReference get location;

  @nullable
  bool get xray;

  @nullable
  @BuiltValueField(wireName: 'blood_test')
  bool get bloodTest;

  @nullable
  @BuiltValueField(wireName: 'ct_scan')
  bool get ctScan;

  @nullable
  @BuiltValueField(wireName: 'patient_name')
  String get patientName;

  @nullable
  @BuiltValueField(wireName: 'user_ref')
  DocumentReference get userRef;

  @nullable
  @BuiltValueField(wireName: 'date_time')
  DateTime get dateTime;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AppointmentsRecordBuilder builder) => builder
    ..tokenNum = ''
    ..doctor = ''
    ..valet = false
    ..xray = false
    ..bloodTest = false
    ..ctScan = false
    ..patientName = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AppointmentsRecord._();
  factory AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder) updates]) =
      _$AppointmentsRecord;

  static AppointmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAppointmentsRecordData({
  DocumentReference patientRef,
  String tokenNum,
  String doctor,
  bool valet,
  DocumentReference location,
  bool xray,
  bool bloodTest,
  bool ctScan,
  String patientName,
  DocumentReference userRef,
  DateTime dateTime,
  String type,
}) =>
    serializers.toFirestore(
        AppointmentsRecord.serializer,
        AppointmentsRecord((a) => a
          ..patientRef = patientRef
          ..tokenNum = tokenNum
          ..doctor = doctor
          ..valet = valet
          ..location = location
          ..xray = xray
          ..bloodTest = bloodTest
          ..ctScan = ctScan
          ..patientName = patientName
          ..userRef = userRef
          ..dateTime = dateTime
          ..type = type));
