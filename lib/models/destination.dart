import 'dart:convert';

import 'package:equatable/equatable.dart';

class Destination extends Equatable {
  final String id;
  final String govEn;
  final String areaEn;
  final String govAr;
  final String areaAr;
  final String addressEn;
  final String addressAr;
  final num lon;
  final num lat;

  const Destination({
    required this.id,
    required this.govEn,
    required this.govAr,
    required this.areaEn,
    required this.areaAr,
    required this.addressEn,
    required this.addressAr,
    required this.lon,
    required this.lat,
  });

  Destination copyWith({
    String? id,
    String? govEn,
    String? govAr,
    String? areaEn,
    String? areaAr,
    String? addressEn,
    String? addressAr,
    num? lon,
    num? lat,
  }) {
    return Destination(
      id: id ?? this.id,
      govEn: govEn ?? this.govEn,
      govAr: govAr ?? this.govAr,
      areaEn: areaEn ?? this.areaEn,
      areaAr: areaAr ?? this.areaAr,
      addressEn: addressEn ?? this.addressEn,
      addressAr: addressAr ?? this.addressAr,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      '_id': id,
      'govEn': govEn,
      'govAr': govAr,
      'areaEn': areaEn,
      'areaAr': areaAr,
      'addressEn': addressEn,
      'addressAr': addressAr,
      'lon': lon,
      'lat': lat,
    };
  }

  factory Destination.fromPocketbase(String data) {
    final json = jsonDecode(data);
    return Destination.fromJson(json);
  }

  factory Destination.fromJson(Map<String, dynamic> map) {
    // final map = jsonDecode(data);
    return Destination(
      id: map["_id"] as String,
      govEn: map['govEn'] as String,
      govAr: map['govAr'] as String,
      areaEn: map['areaEn'] as String,
      areaAr: map['areaAr'] as String,
      addressEn: map['addressEn'] as String,
      addressAr: map['addressAr'] as String,
      lon: map["lon"] as num,
      lat: map["lat"] as num,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        govEn,
        areaEn,
        addressEn,
        addressAr,
        govAr,
        areaAr,
        lon,
        lat,
      ];

  factory Destination.initial() {
    return const Destination(
      id: "",
      govEn: "",
      govAr: "",
      areaEn: "",
      areaAr: "",
      addressEn: "",
      addressAr: "",
      lat: 0.0,
      lon: 0.0,
    );
  }
}
