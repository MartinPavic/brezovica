import 'package:flutter/cupertino.dart';
import 'package:latlong2/latlong.dart';

abstract class Constants {
  static const Color mainColor = Color.fromARGB(255, 1, 71, 102);
  static const String contentfulUrl = 'https://cdn.contentful.com/';
  static const String mzbEmail = 'mladizabrezovicu2@gmail.com';
  static const String mapBaseUrl = 'https://tile.thunderforest.com/';
  static const String mapZXYpng = '/{z}/{x}/{y}.png';
  static LatLng brezovicaLatLng = LatLng(45.726798, 15.912234);
}
