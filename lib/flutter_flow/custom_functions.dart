import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String getDocumentId(DocumentReference docRef) {
  // Add your function code here!
  return docRef.id;
}

String geoPointToString(LatLng geoPoint) {
  // convert input LatLng type to string type
  return '${geoPoint.latitude},${geoPoint.longitude}';
}
