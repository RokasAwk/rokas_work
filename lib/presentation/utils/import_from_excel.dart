// ignore_for_file: avoid_print
import 'dart:io';
import 'dart:typed_data';

import 'package:excel/excel.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<Excel> improtExcel() async {
  // 讀取 Excel 文件
  final ByteData data = await rootBundle.load('assets/ramen_map.xlsx');
  var bytes = data.buffer.asUint8List();
  var excel = Excel.decodeBytes(bytes);

  return excel;
}

List<List<String>> readRawDataFromExcel(Excel excel) {
  var table = excel.tables[excel.getDefaultSheet()];

  List<List<Data?>>? rows = table?.rows;

  if (rows == null) {
    print('Error while parsing Excel file');
    return [];
  }

  return rows
      .map((e1) => e1.map((e2) => '${e2?.value ?? ''}').toList())
      .toList();
}

Set<Marker> createLanguageFile({
  required String local,
  required Map<String, String> data,
  required Set<Marker> markers,
  required Function({
    required double xLocation,
    required double yLocation,
    required String shopName,
  }) onTap,
}) {
  data.forEach((k, v) {
    final name = v;
    final latitude = double.parse(k.split(' ')[1]);
    final longitude = double.parse(k.split(' ')[0]);

    // 創建標記
    markers.add(Marker(
        markerId: MarkerId(name),
        position: LatLng(latitude, longitude),
        infoWindow: InfoWindow(title: name),
        onTap: () => onTap(
              xLocation: latitude,
              yLocation: longitude,
              shopName: name,
            ),
        icon: BitmapDescriptor.defaultMarker));
  });
  return markers;
}

List<String> findVariable(String str) {
  List<String> list = [];

  String currentStr = str;

  try {
    do {
      int openIndex = currentStr.indexOf("{");

      if (openIndex >= 0) {
        String nextStr = currentStr.substring(openIndex + 1);
        int closeIndex = nextStr.indexOf("}");

        if (closeIndex >= 0) {
          int nextOpenIndex = nextStr.indexOf("{");

          if (nextOpenIndex >= 0 && nextOpenIndex < closeIndex) {
            nextStr = nextStr.substring(nextOpenIndex + 1);
          }

          list.add(nextStr.substring(0, closeIndex));
          currentStr = nextStr.substring(closeIndex + 1);
        } else {
          break;
        }
      } else {
        break;
      }
    } while (currentStr.length > 2);
  } catch (e) {
    print(e);
  }

  return list;
}

List<List<String>> transposeList(List<List<String>> input) {
  List<List<String>> output = [];

  // Check for rectangle matrix
  if (input.any((element) => element.length != input[0].length)) {
    return [];
  }

  for (int i = 0; i < input[0].length; i++) {
    output.add(List<String>.generate(input.length, (idx) => ''));
  }

  for (int i = 0; i < input.length; i++) {
    List<String> column = input[i];
    for (int j = 0; j < input[0].length; j++) {
      String rowItem = column[j];
      output.elementAt(j).removeAt(i);
      output.elementAt(j).insert(i, rowItem);
    }
  }

  return output;
}
