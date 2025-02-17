import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/error_state_widget%20.dart';
import 'package:rokas_work/presentation/pages/widgets/filter_button.dart';
import 'package:rokas_work/presentation/pages/widgets/form_field_with_title.dart';
import 'package:rokas_work/presentation/pages/widgets/icon_dialog.dart';
import 'package:rokas_work/presentation/pages/widgets/loading_state_widget%20.dart';
import 'package:rokas_work/presentation/routers/router.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/utils/toast_utils.dart';

import '../../../domain/value_object/36_hours_weather.dart';
import '../../di_providers/di_provider.dart';
import '../widgets/common_border.dart';
import 'weather_const.dart';
import 'weather_notifier.dart';
import 'weather_state.dart';

class ThirtySixHoursWeatherPage extends ConsumerStatefulWidget {
  const ThirtySixHoursWeatherPage({
    super.key,
  });

  @override
  ConsumerState<ThirtySixHoursWeatherPage> createState() =>
      _ThirtySixHoursWeatherPageState();
}

class _ThirtySixHoursWeatherPageState
    extends ConsumerState<ThirtySixHoursWeatherPage> {
  var size;
  late final AppRouter appRouter;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    appRouter = ref.read(routerProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref
          .read(weatherStateNotifierProvider.notifier)
          .fetch36HoursWeatherData(elementName: 'MinT,MaxT');
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    WeatherState state = ref.watch(weatherStateNotifierProvider);
    WeatherNotifier notifier = ref.read(weatherStateNotifierProvider.notifier);

    return state.when(
      loading: () => const LoadingStateWidget(),
      success: (
        weekWeatherDataList,
        thirtySixHoursWeatherDataList,
        currentCity,
      ) =>
          _buildBody(
        thirtySixHoursWeatherDataList: thirtySixHoursWeatherDataList,
        notifier: notifier,
        state: state,
      ),
      error: () => ErrorStateWidget(
        onRetry: () async => await ref
            .read(weatherStateNotifierProvider.notifier)
            .fetch36HoursWeatherData(elementName: 'MinT,MaxT'),
      ),
    );
  }

  Widget _buildBody({
    required List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
    required WeatherNotifier notifier,
    required WeatherState state,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FilterButton(
              onTap: () =>
                  ToastUtils.showCustomDialog(IconDialog.withBodyWidget(
                      message: L10n.tr.common_advanced_search,
                      onCancel: () {
                        searchController.clear();
                        appRouter.pop();
                      },
                      onConfirm: () async {
                        await ref
                            .read(weatherStateNotifierProvider.notifier)
                            .fetch36HoursWeatherData(
                                elementName: 'MinT,MaxT',
                                locationName: (state as Success).currentCity);
                        appRouter.pop();
                      },
                      subContent: DropdownSearch<String>(
                        selectedItem: WeatherConst.cityList.first,
                        items: (filter, infiniteScrollProps) =>
                            WeatherConst.cityList,
                        decoratorProps: DropDownDecoratorProps(
                          baseStyle: AppTextStyles.appW400White,
                          decoration: InputDecoration(
                            labelText: L10n.tr.common_search_city_hint,
                            border: const OutlineInputBorder(),
                            labelStyle: AppTextStyles.appW400BlueGray,
                            enabledBorder: enableBorder(),
                            focusedBorder: focusBorder(),
                            errorBorder: errorBorder(),
                            suffixIconColor: AppColors.white,
                          ),
                        ),
                        popupProps: PopupProps.menu(
                            fit: FlexFit.loose,
                            constraints:
                                BoxConstraints(maxHeight: size.height * 0.3),
                            searchFieldProps: const TextFieldProps()),
                        onChanged: (value) => notifier.updateCurrentCity(
                            currentCity: value ?? ''),
                      ))),
              filterTitle: L10n.tr.common_advanced_search),
          const SizedBox(height: 8),
          Expanded(
              child: Center(
                  child: _buildWeatherList(
            thirtySixHoursWeatherDataList: thirtySixHoursWeatherDataList,
          )))
        ]));
  }

  Widget _buildWeatherList({
    required List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
  }) {
    return ListView.separated(
        itemBuilder: (context, index) {
          ThirtySixHoursWeather item = thirtySixHoursWeatherDataList[index];
          return Column(
            children: [
              Row(
                children: [
                  _buildDivider(),
                  const Spacer(),
                  Text(item.locationName),
                  const Spacer(),
                  _buildDivider(isReverse: true)
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              for (int index = 0;
                  index < item.weatherElement[0].time.length;
                  index++) ...[
                _buildWeatherForm(
                    title: item.weatherElement[0].time[index].startTime,
                    body: getTemperature(
                      item: item,
                      index: index,
                    ),
                    index: index),
                const Divider()
              ]
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(thickness: 3);
        },
        itemCount: thirtySixHoursWeatherDataList.length);
  }

  String getTemperature({
    required ThirtySixHoursWeather item,
    required int index,
  }) {
    return '${item.weatherElement[0].time[index].parameter.parameterName}～${item.weatherElement[1].time[index].parameter.parameterName}';
  }

  // 分隔線
  Widget _buildDivider({
    bool isReverse = false,
  }) {
    return Container(
      height: 2,
      width: size.width * 0.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: isReverse ? Alignment.centerRight : Alignment.centerLeft,
        end: isReverse ? Alignment.centerLeft : Alignment.centerRight,
        colors: AppColors.dividerGradientColors,
      )),
    );
  }

  Widget _buildWeatherForm({
    required String title,
    required String body,
    required int index,
  }) {
    return Container(
        color: index.isEven
            ? AppColors.orange.withOpacity(0.3)
            : AppColors.neutral_100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      title.split(' ')[0],
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      title.split(' ')[1],
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('$body度C')],
                  ),
                ))
          ],
        ));
  }
}
