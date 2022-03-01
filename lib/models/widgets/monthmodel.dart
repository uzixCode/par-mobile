// To parse this JSON data, do
//
//     final monthmodel = monthmodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Monthmodel> monthmodelFromJson(String str) =>
    List<Monthmodel>.from(json.decode(str).map((x) => Monthmodel.fromJson(x)));

String monthmodelToJson(List<Monthmodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Monthmodel {
  Monthmodel({
    required this.bulan,
    required this.index,
  });

  final String bulan;
  final int index;

  factory Monthmodel.fromJson(Map<String, dynamic> json) => Monthmodel(
        bulan: json["bulan"],
        index: json["index"],
      );

  Map<String, dynamic> toJson() => {
        "bulan": bulan,
        "index": index,
      };
}
