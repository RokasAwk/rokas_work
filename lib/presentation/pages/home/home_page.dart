import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/resource/assets.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';
import 'package:rokas_work/utils/toast_utils.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/developed_by_widget.dart';
import 'home_drawer.dart';
import 'home_notifier.dart';
import 'home_state.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late Timer dateTimeTimer;
  var size;
  List<String> functionsList = [
    L10n.tr.page_to_do_title,
    L10n.tr.page_memo_title,
    L10n.tr.page_calender_title,
    L10n.tr.page_music_player_title,
    L10n.tr.page_cost_title,
    L10n.tr.page_ramen_map_title,
    L10n.tr.page_weather_title,
    L10n.tr.page_1A_2B_title,
  ];

  final List<String> punchImgList = [
    Assets.punch1,
    Assets.punch2,
    Assets.punch3,
    Assets.punch4,
    Assets.punch5,
    Assets.punch6,
  ];

  @override
  void initState() {
    dateTimeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      ref
          .read(homeStateNotifierProvider.notifier)
          .updateCurrentTime(currentTime: DateTime.now());
    });
    super.initState();
  }

  @override
  void dispose() {
    dateTimeTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    HomeState state = ref.watch(homeStateNotifierProvider);
    HomeNotifier notifier = ref.read(homeStateNotifierProvider.notifier);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(L10n.tr.page_home_title),
            leading: _buildDrawerButton(notifier),
            actions: [
              IconButton(
                onPressed: () => notifier.goToLoginPage(),
                icon: const FaIcon(FontAwesomeIcons.user),
              )
            ],
          ),
          drawer: HomeDrawer(
            size: size,
            notifier: notifier,
          ),
          body: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(bottom: 32),
            child: Column(
              children: [
                _buildScrollMsg(size: size),
                const SizedBox(height: 15),
                Expanded(
                    child: _buildBody(
                  state: state,
                  notifier: notifier,
                )),
                Row(
                  children: [
                    _buildSectionTitleDivider(),
                    const Spacer(),
                    Text(
                      L10n.tr.page_punch_title,
                      style: AppTextStyles.appW400Primary,
                    ),
                    const Spacer(),
                    _buildSectionTitleDivider(isReverse: true),
                  ],
                ),
                _buildPunchImgSection(),
                const DevelopedByWidget(),
              ],
            ),
          )),
    );
  }

// 開啟Drawer的按鈕
  Widget _buildDrawerButton(HomeNotifier notifier) {
    return Builder(builder: (context) {
      return IconButton(
        onPressed: () => notifier.openDrawer(context),
        icon: const FaIcon(FontAwesomeIcons.bars),
      );
    });
  }

// 首頁跑馬燈
  Widget _buildScrollMsg({
    required Size size,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: size.height * 0.05,
      decoration: BoxDecoration(
          color: AppColors.blueGrey_10,
          border: Border(
              bottom: BorderSide(
            color: AppColors.black_50,
            width: 2,
          ))),
      child: Row(
        children: [
          const FaIcon(
            FontAwesomeIcons.bell,
            color: AppColors.black,
          ),
          const SizedBox(width: 15),
          Expanded(
              child: Text(
            L10n.tr.page_home_noify_title,
            style: AppTextStyles.appW400Primary,
          ))
        ],
      ),
    );
  }

// 現在時間的區塊
  Widget _buildDateTimeSection({
    required HomeState state,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(
        state.currentTime.toDateTimeString(),
        style: AppTextStyles.appW400N300Medium,
      )
    ]);
  }

  Widget _buildBody({
    required HomeState state,
    required HomeNotifier notifier,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: _buildDateTimeSection(
                  state: state,
                )),
            Expanded(
                flex: 1,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    onTap: () => notifier.goToLoginPage(),
                    child: Text('登入?',
                        style: AppTextStyles.appW600BlueGray.copyWith(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dotted)),
                  )
                ]))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            _buildSectionTitleDivider(),
            const Spacer(),
            Text(
              L10n.tr.page_function_area_title,
              style: AppTextStyles.appW400Primary,
            ),
            const Spacer(),
            _buildSectionTitleDivider(isReverse: true),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        _buildGridSection(
          functionsList: functionsList,
          notifier: notifier,
        ),
      ],
    );
  }

// 分隔線
  Widget _buildSectionTitleDivider({
    bool isReverse = false,
  }) {
    {
      return Container(
        height: 5,
        width: size.width * 0.2,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: isReverse ? Alignment.centerRight : Alignment.centerLeft,
          end: isReverse ? Alignment.centerLeft : Alignment.centerRight,
          colors: AppColors.dividerGradientColors,
        )),
      );
    }
  }

// 功能區域
  Widget _buildGridSection({
    required List functionsList,
    required HomeNotifier notifier,
  }) {
    return Container(
        height: 52 * ((functionsList.length ~/ 4) + 1),
        decoration: BoxDecoration(
          color: AppColors.blueGrey_10,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 0,
            childAspectRatio: 89 / 66,
          ),
          shrinkWrap: false,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return _buildGridViewItemWidget(
                index: index,
                notifier: notifier,
                functionTitle: functionsList[index]);
          },
          itemCount: functionsList.length,
        ));
  }

// 功能區域的子元件
  Widget _buildGridViewItemWidget({
    required int index,
    required HomeNotifier notifier,
    required String functionTitle,
  }) {
    return GestureDetector(
      onTap: () => getFunctionsOnTapFunction(
        index: index,
        notifier: notifier,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.blueGray,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    getFunctionIconFunction(
                      index: index,
                    ),
                    color: AppColors.b_2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Expanded(
              child: Text(
                functionTitle, //fixAutoLines(),
                textAlign: TextAlign.center,
                style: AppTextStyles.appW400N300Small,
                overflow: TextOverflow.visible,
              ),
            )
          ],
        ),
      ),
    );
  }

// 動態輪播圖
  Widget _buildPunchImgSection() {
    return SizedBox(
        child: CarouselSlider(
      options: CarouselOptions(
        autoPlayCurve: Curves.linearToEaseOut,
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds: 50),
      ),
      items: punchImgList
          .map((item) => SizedBox(
                child: Center(
                    child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: 1000,
                )),
              ))
          .toList(),
    ));
  }

// 取得功能區域的對應圖示
  IconData getFunctionIconFunction({
    required int index,
  }) {
    switch (index) {
      case 0:
        return FontAwesomeIcons.list;
      case 1:
        return FontAwesomeIcons.book;
      case 2:
        return Icons.calendar_month;
      case 3:
        return Icons.music_note;
      case 4:
        return Icons.attach_money;
      case 5:
        return Icons.ramen_dining;
      case 6:
        return Icons.sunny;
      case 7:
        return Icons.numbers;

      default:
        return Icons.error;
    }
  }

// 取得功能區域的對應路由
  void getFunctionsOnTapFunction({
    required int index,
    required HomeNotifier notifier,
  }) {
    switch (index) {
      case 0:
        return notifier.goToToDoPage();
      case 1:
        return notifier.goToMemoListPage();
      case 3:
        return notifier.goToMusicPlayerPage();
      case 4:
        return notifier.goToCostPage();
      case 5:
        return notifier.goToRamenMapPage();
      case 7:
        return notifier.goToOneATwoBPage();

      default:
        return ToastUtils.showToast('別急！還沒開發～');
    }
  }
}
