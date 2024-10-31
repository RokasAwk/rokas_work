import 'package:excel/excel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rokas_work/domain/value_object/ramen_location.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../routers/router.dart';
import '../../utils/import_from_excel.dart';
import 'ramen_map_state.dart';

abstract class RamenMapNotifier extends StateNotifier<RamenMapState> {
  RamenMapNotifier(super.state);

  void updateLocationKeySet({
    required Set<Marker> locationKeySet,
  });

  void addShopLocation({
    required double xLocation,
    required double yLocation,
    required String shopName,
  });

  void updateCurrentShop({
    required RamenLocation currentShop,
  });

  Future<void> loadExcelPlaces({
    required Set<Marker> markers,
  });

  void openMapByUrl({
    required double latitude,
    required double longitude,
  });
}

class RamenMapNotifierImpl extends RamenMapNotifier {
  final AppRouter appRouter;

  RamenMapNotifierImpl({
    required this.appRouter,
  }) : super(RamenMapState.init());

  @override
  void updateLocationKeySet({
    required Set<Marker> locationKeySet,
  }) {
    state = state.copyWith(locationSet: locationKeySet);
  }

  @override
  void addShopLocation({
    required double xLocation,
    required double yLocation,
    required String shopName,
  }) {
    RamenLocation locationData = RamenLocation(
      xLocation: xLocation,
      yLocation: yLocation,
      shopName: shopName,
    );
  }

  @override
  void updateCurrentShop({required RamenLocation currentShop}) {
    state = state.copyWith(currentShop: currentShop);
  }

  @override
  Future<void> loadExcelPlaces({
    required Set<Marker> markers,
  }) async {
    Excel excelData = await improtExcel();

    List<List<String>> rawData = readRawDataFromExcel(excelData);

    List<String> keys = rawData.removeAt(0)..removeAt(0);

    for (List<String> row in rawData) {
      String ramenShop = row.removeAt(0);

      // print('Processing  : $ramenShop');
      Map<String, String> ramenShopMap = {};
      for (int index = 0; index < keys.length; index++) {
        String location = ramenShop.split('(')[1].split(')')[0];
        ramenShopMap.putIfAbsent(location, () => row[index]);
      }

      markers = createLanguageFile(
          local: ramenShop,
          data: ramenShopMap,
          markers: markers,
          onTap: ({
            required double xLocation,
            required double yLocation,
            required String shopName,
          }) =>
              updateCurrentShop(
                  currentShop: RamenLocation(
                xLocation: xLocation,
                yLocation: yLocation,
                shopName: shopName,
              )));
    }

    updateLocationKeySet(locationKeySet: markers);
  }

  @override
  void openMapByUrl({
    required double latitude,
    required double longitude,
  }) async {
    final String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not launch $googleUrl';
    }
  }
}
