// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospitals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HospitalsRecord> _$hospitalsRecordSerializer =
    new _$HospitalsRecordSerializer();

class _$HospitalsRecordSerializer
    implements StructuredSerializer<HospitalsRecord> {
  @override
  final Iterable<Type> types = const [HospitalsRecord, _$HospitalsRecord];
  @override
  final String wireName = 'HospitalsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HospitalsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactNumber;
    if (value != null) {
      result
        ..add('contact_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.xray;
    if (value != null) {
      result
        ..add('xray')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bloodTest;
    if (value != null) {
      result
        ..add('blood_test')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ctScan;
    if (value != null) {
      result
        ..add('ct_scan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parkingLocation;
    if (value != null) {
      result
        ..add('parking_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.valetLocation;
    if (value != null) {
      result
        ..add('valet_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  HospitalsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HospitalsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contact_number':
          result.contactNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'xray':
          result.xray = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blood_test':
          result.bloodTest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ct_scan':
          result.ctScan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parking_location':
          result.parkingLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'valet_location':
          result.valetLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$HospitalsRecord extends HospitalsRecord {
  @override
  final String name;
  @override
  final String contactNumber;
  @override
  final String xray;
  @override
  final String bloodTest;
  @override
  final String ctScan;
  @override
  final LatLng parkingLocation;
  @override
  final LatLng valetLocation;
  @override
  final DocumentReference<Object> reference;

  factory _$HospitalsRecord([void Function(HospitalsRecordBuilder) updates]) =>
      (new HospitalsRecordBuilder()..update(updates)).build();

  _$HospitalsRecord._(
      {this.name,
      this.contactNumber,
      this.xray,
      this.bloodTest,
      this.ctScan,
      this.parkingLocation,
      this.valetLocation,
      this.reference})
      : super._();

  @override
  HospitalsRecord rebuild(void Function(HospitalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HospitalsRecordBuilder toBuilder() =>
      new HospitalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HospitalsRecord &&
        name == other.name &&
        contactNumber == other.contactNumber &&
        xray == other.xray &&
        bloodTest == other.bloodTest &&
        ctScan == other.ctScan &&
        parkingLocation == other.parkingLocation &&
        valetLocation == other.valetLocation &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), contactNumber.hashCode),
                            xray.hashCode),
                        bloodTest.hashCode),
                    ctScan.hashCode),
                parkingLocation.hashCode),
            valetLocation.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HospitalsRecord')
          ..add('name', name)
          ..add('contactNumber', contactNumber)
          ..add('xray', xray)
          ..add('bloodTest', bloodTest)
          ..add('ctScan', ctScan)
          ..add('parkingLocation', parkingLocation)
          ..add('valetLocation', valetLocation)
          ..add('reference', reference))
        .toString();
  }
}

class HospitalsRecordBuilder
    implements Builder<HospitalsRecord, HospitalsRecordBuilder> {
  _$HospitalsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _contactNumber;
  String get contactNumber => _$this._contactNumber;
  set contactNumber(String contactNumber) =>
      _$this._contactNumber = contactNumber;

  String _xray;
  String get xray => _$this._xray;
  set xray(String xray) => _$this._xray = xray;

  String _bloodTest;
  String get bloodTest => _$this._bloodTest;
  set bloodTest(String bloodTest) => _$this._bloodTest = bloodTest;

  String _ctScan;
  String get ctScan => _$this._ctScan;
  set ctScan(String ctScan) => _$this._ctScan = ctScan;

  LatLng _parkingLocation;
  LatLng get parkingLocation => _$this._parkingLocation;
  set parkingLocation(LatLng parkingLocation) =>
      _$this._parkingLocation = parkingLocation;

  LatLng _valetLocation;
  LatLng get valetLocation => _$this._valetLocation;
  set valetLocation(LatLng valetLocation) =>
      _$this._valetLocation = valetLocation;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HospitalsRecordBuilder() {
    HospitalsRecord._initializeBuilder(this);
  }

  HospitalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _contactNumber = $v.contactNumber;
      _xray = $v.xray;
      _bloodTest = $v.bloodTest;
      _ctScan = $v.ctScan;
      _parkingLocation = $v.parkingLocation;
      _valetLocation = $v.valetLocation;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HospitalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HospitalsRecord;
  }

  @override
  void update(void Function(HospitalsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HospitalsRecord build() {
    final _$result = _$v ??
        new _$HospitalsRecord._(
            name: name,
            contactNumber: contactNumber,
            xray: xray,
            bloodTest: bloodTest,
            ctScan: ctScan,
            parkingLocation: parkingLocation,
            valetLocation: valetLocation,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
