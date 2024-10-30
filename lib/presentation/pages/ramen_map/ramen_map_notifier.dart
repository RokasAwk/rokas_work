import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rokas_work/domain/value_object/ramen_location.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_ramen_map_service.dart';

import '../../routers/router.dart';
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
    FirestoreRamenMapService().addData(locationData);
  }

  @override
  void updateCurrentShop({required RamenLocation currentShop}) {
    state = state.copyWith(currentShop: currentShop);
  }
}
