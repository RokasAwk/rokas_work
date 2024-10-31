import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/common_button.dart';
import 'package:rokas_work/presentation/pages/widgets/primary_button.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/utils/toast_utils.dart';

import '../../di_providers/di_provider.dart';
import '../../routers/router.dart';
import '../widgets/form_field_with_title.dart';
import '../widgets/icon_dialog.dart';
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
  late final AppRouter appRouter;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  late GoogleMapController mapController;
  late BitmapDescriptor redDotIcon;
  Set<Marker> _markers = {};

  TextEditingController addXLocationController = TextEditingController();
  TextEditingController addYLocationController = TextEditingController();
  TextEditingController addShopNameController = TextEditingController();

  // 設定初始位置
  static const CameraPosition _center = CameraPosition(
    target: LatLng(25.033244239810053, 121.56269542199011),
    zoom: 14,
  );

  @override
  void initState() {
    super.initState();

    RamenMapNotifier notifier =
        ref.read(ramenMapStateNotifierProvider.notifier);
    appRouter = ref.read(routerProvider);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      notifier.loadExcelPlaces(markers: _markers);
    });
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
        actions: [
          TextButton.icon(
            onPressed: () => ToastUtils.showCustomDialog(
              _buildAddRamenShopDialog(notifier: notifier),
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
              AppColors.white,
            )),
            icon: const FaIcon(
              FontAwesomeIcons.plus,
              size: 16,
            ),
            label: Text(L10n.tr.page_ramen_map_add_ramen_shop_add_shop_button),
          )
        ],
      ),
      body: _buildBody(
        state: state,
        notifier: notifier,
        size: size,
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Widget _buildBody({
    required RamenMapState state,
    required RamenMapNotifier notifier,
    required Size size,
  }) {
    return Column(children: [
      SizedBox(
        height: size.height * 0.6,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          indoorViewEnabled: true,
          myLocationEnabled: true,
          initialCameraPosition: _center,
          markers: state.locationSet,
        ),
      ),
      const SizedBox(height: 16),
      _buildTextTile(
          title: L10n.tr.page_ramen_map_shop_name,
          body: state.currentShop.shopName),
      _buildTextTile(
          title: L10n.tr.page_ramen_map_shop_location,
          body:
              '${state.currentShop.xLocation}, ${state.currentShop.yLocation}'),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: CommonButton(
            title: L10n.tr.page_ramen_map_go_to_google_map,
            verticalPadding: 14,
            onPressed: () {
              if (state.currentShop.xLocation == 0 ||
                  state.currentShop.yLocation == 0) {
                return;
              }

              notifier.openMapByUrl(
                  latitude: state.currentShop.xLocation,
                  longitude: state.currentShop.yLocation);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          )),
    ]);
  }

  Widget _buildTextTile({
    required String title,
    required String body,
  }) {
    return Padding(
        padding: const EdgeInsetsDirectional.all(17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Container(
              constraints: BoxConstraints(maxWidth: size.width * 0.5),
              child: Text(
                body,
                overflow: TextOverflow.clip,
              ),
            )
          ],
        ));
  }

  Widget _buildAddRamenShopDialog({
    required RamenMapNotifier notifier,
  }) {
    return IconDialog(
      title: Text(
        L10n.tr.page_ramen_map_add_ramen_shop_add_shop_button,
        style: AppTextStyles.appW400White,
      ),
      icon: const FaIcon(
        FontAwesomeIcons.mapLocation,
        color: AppColors.white,
      ),
      content: Column(
        children: [
          _buildFormField(
            titleText: L10n.tr.page_ramen_map_add_ramen_shop_x_location,
            hintText: L10n.tr.page_ramen_map_add_ramen_shop_x_location_hint,
            controller: addXLocationController,
          ),
          _buildFormField(
            titleText: L10n.tr.page_ramen_map_add_ramen_shop_y_location,
            hintText: L10n.tr.page_ramen_map_add_ramen_shop_y_location_hint,
            controller: addYLocationController,
          ),
          _buildFormField(
            titleText: L10n.tr.page_ramen_map_add_ramen_shop_name,
            hintText: L10n.tr.page_ramen_map_add_ramen_shop_name_hint,
            controller: addShopNameController,
          ),
        ],
      ),
      negativeButton: CommonButton.medium(
        text: L10n.tr.common_cancel,
        onPressed: () => appRouter.pop(),
      ),
      positiveButton: PrimaryButton.medium(
        text: L10n.tr.common_ok,
        onPressed: () async {
          notifier.addShopLocation(
            xLocation: double.parse(addXLocationController.text),
            yLocation: double.parse(addXLocationController.text),
            shopName: addShopNameController.text,
          );
          ToastUtils.showToast(L10n.tr.common_success);

          _markers.add(
            Marker(
              markerId: MarkerId(addShopNameController.text),
              position: LatLng(double.parse(addXLocationController.text),
                  double.parse(addXLocationController.text)),
              infoWindow: InfoWindow(title: addShopNameController.text),
            ),
          );

          notifier.updateLocationKeySet(locationKeySet: _markers);
          appRouter.pop();
        },
      ),
    );
  }

  // 輸入區
  Widget _buildFormField({
    required String titleText,
    required String hintText,
    required TextEditingController controller,
  }) {
    return FormFieldWithTitle(
      controller: controller,
      titleText: titleText,
      hintText: hintText,
    );
  }
}
