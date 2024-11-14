import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/domain/value_object/week_weather.dart';
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

import '../../di_providers/di_provider.dart';
import 'weather_notifier.dart';
import 'weather_state.dart';

@RoutePage()
class WeatherPage extends ConsumerStatefulWidget {
  const WeatherPage({
    super.key,
  });

  @override
  ConsumerState<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends ConsumerState<WeatherPage> {
  var size;
  late final AppRouter appRouter;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    appRouter = ref.read(routerProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref
          .read(weatherStateNotifierProvider.notifier)
          .fetchData(elementName: 'WeatherDescription');
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

    return Scaffold(
        appBar: AppBar(
          title: Text(L10n.tr.page_weather_title),
          leading: const BackButton(),
        ),
        backgroundColor: AppColors.neutral_50,
        body: state.when(
          loading: () => const LoadingStateWidget(),
          success: (weatherDataList) => _buildBody(
            weatherDataList: weatherDataList,
            notifier: notifier,
          ),
          error: () => ErrorStateWidget(
            onRetry: () async => await ref
                .read(weatherStateNotifierProvider.notifier)
                .fetchData(elementName: 'WeatherDescription'),
          ),
        ));
  }

  Widget _buildBody({
    required List<WeekWeather> weatherDataList,
    required WeatherNotifier notifier,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FilterButton(
              onTap: () => ToastUtils.showCustomDialog(
                  IconDialog.withBodyWidget(
                      message: '進階搜尋',
                      onCancel: () {
                        searchController.clear();
                        appRouter.pop();
                      },
                      onConfirm: () async {
                        await ref
                            .read(weatherStateNotifierProvider.notifier)
                            .fetchData(
                                elementName: 'WeatherDescription',
                                locationName: searchController.text);
                        searchController.clear();
                        appRouter.pop();
                      },
                      subContent: FormFieldWithTitle(
                          controller: searchController,
                          titleText: '搜尋縣市',
                          textStyle: AppTextStyles.appW600White,
                          hintText: '請輸入縣市完整名稱'))),
              filterTitle: '進階搜尋'),
          const SizedBox(height: 8),
          Expanded(
              child: Center(
                  child: _buildWeatherList(
            weatherDataList: weatherDataList,
          )))
        ]));
  }

  Widget _buildWeatherList({
    required List<WeekWeather> weatherDataList,
  }) {
    return ListView.separated(
        itemBuilder: (context, index) {
          WeekWeather item = weatherDataList[index];
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
                  index < item.weatherElement.time.length;
                  index++) ...[
                _buildWeatherForm(
                    title: item.weatherElement.time[index].startTime,
                    body: item.weatherElement.time[index].elementValue
                        .weatherDescription,
                    index: index),
                const Divider()
              ]
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(thickness: 3);
        },
        itemCount: weatherDataList.length);
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
        color: index.isEven ? AppColors.orange.withOpacity(0.3) : null,
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
                  decoration:
                      BoxDecoration(border: index.isEven ? null : Border.all()),
                  child: Text(body),
                ))
          ],
        ));
  }
}
