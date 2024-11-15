import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/weather/week_weather_page.dart';
import 'package:rokas_work/presentation/routers/router.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import '../../di_providers/di_provider.dart';
import '36_hours_weather_page.dart';
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

class _WeatherPageState extends ConsumerState<WeatherPage>
    with TickerProviderStateMixin {
  var size;
  late final AppRouter appRouter;

  final List<String> _tabs = [
    L10n.tr.page_weather_week_weather_tab,
    L10n.tr.page_weather_36_hours_weather_tab
  ];
  late TabController _tabController;

  @override
  void initState() {
    appRouter = ref.read(routerProvider);
    _tabController = TabController(length: _tabs.length, vsync: this);
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
        body: Column(
          children: [
            _buildTabBar(notifier: notifier),
            Expanded(
                child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                  WeekWeatherPage(),
                  ThirtySixHoursWeatherPage(),
                ]))
          ],
        ));
  }

  Widget _buildTabBar({
    required WeatherNotifier notifier,
  }) {
    return Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          controller: _tabController,
          tabAlignment: TabAlignment.center,
          isScrollable: true,
          dividerColor: Colors.transparent,
          labelColor: AppColors.primaryColor,
          unselectedLabelColor: AppColors.neutral_300,
          labelStyle: AppTextStyles.appW600Primary,
          indicator: _tabIndicator(context),
          tabs: _tabs.map((e) => Tab(text: e)).toList(),
          onTap: (value) => onChangedDataType(index: value, notifier: notifier),
        ));
  }

  Future<void> onChangedDataType({
    required int index,
    required WeatherNotifier notifier,
  }) {
    switch (index) {
      case 1:
        return notifier.fetch36HoursWeatherData(elementName: 'MinT,MaxT');

      case 0:
      default:
        return notifier.fetchWeekWeatherData(elementName: 'WeatherDescription');
    }
  }

  BoxDecoration _tabIndicator(context) => BoxDecoration(
      border: Border(
          bottom: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2.0,
              style: BorderStyle.solid)));
}
