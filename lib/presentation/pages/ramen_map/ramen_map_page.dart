import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';

import '../../di_providers/di_provider.dart';
import 'ramen_map_notifier.dart';
import 'ramen_map_state.dart';

@RoutePage()
class RamenMapPage extends ConsumerStatefulWidget {
  const RamenMapPage({
    super.key,
  });

  @override
  ConsumerState<RamenMapPage> createState() => _RamenMapPageState();
}

class _RamenMapPageState extends ConsumerState<RamenMapPage> {
  var size;
  late GoogleMapController mapController;

  // 設定初始位置
  static const LatLng _center = LatLng(37.42796133580664, -122.085749655962);
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: MarkerId('marker1'),
        position: _center,
        infoWindow:
            InfoWindow(title: 'My Location', snippet: 'This is where I am!'),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    RamenMapState state = ref.watch(ramenMapStateNotifierProvider);
    RamenMapNotifier notifier =
        ref.read(ramenMapStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_ramen_map_title),
        leading: const BackButton(),
      ),
      body: _buildBody(
        state: state,
        size: size,
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget _buildBody({
    required RamenMapState state,
    required Size size,
  }) {
    return Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 14.0,
        ),
        markers: _markers,
      ),
    );
  }
}
