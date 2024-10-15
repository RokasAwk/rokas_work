import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/resource/png_assets.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/developed_by_widget.dart';
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
    L10n.tr.page_expense_title,
    L10n.tr.page_calender_title,
    L10n.tr.page_music_player_title
  ];

  final List<String> punchImgList = [
    PngAssets.punch1,
    PngAssets.punch2,
    PngAssets.punch3,
    PngAssets.punch4,
    PngAssets.punch5,
    PngAssets.punch6,
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
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
            leading: _buildDrawerBth(),
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
                _buildPuchImgSection(),
                const DevelopedByWidget(),
              ],
            ),
          )),
    );
  }

  Widget _buildDrawerBth() {
    return IconButton(
      onPressed: () {},
      icon: const FaIcon(FontAwesomeIcons.bars),
    );
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

  Widget _buildDateTimeSection({
    required HomeState state,
  }) {
    return Text(
      state.currentTime.toDateTimeString(),
      style: AppTextStyles.appW400N300Medium,
    );
  }

  Widget _buildBody({
    required HomeState state,
    required HomeNotifier notifier,
  }) {
    return Column(
      children: [
        _buildDateTimeSection(
          state: state,
        ),
        const SizedBox(
          height: 16,
        ),
        _buildSectionTitleDivider(),
        _buildGridSection(
          functionsList: functionsList,
          notifier: notifier,
        ),
      ],
    );
  }

  Widget _buildSectionTitleDivider() {
    return Container(
      height: 32,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: AppColors.gradientColors,
      )),
    );
  }

  Widget _buildGridSection({
    required List functionsList,
    required HomeNotifier notifier,
  }) {
    return Container(
        height: 56 * ((functionsList.length ~/ 4) + 1),
        decoration: BoxDecoration(
          color: AppColors.blueGrey_10,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
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

  Widget _buildGridViewItemWidget({
    required int index,
    required HomeNotifier notifier,
    required String functionTitle,
  }) {
    return GestureDetector(
      onTap: () => getOnTapFunction(
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
                    color: AppColors.neutral_300,
                    borderRadius: BorderRadius.circular(12),
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

  Widget _buildPuchImgSection() {
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

  void getOnTapFunction({
    required int index,
    required HomeNotifier notifier,
  }) {
    switch (index) {
      case 0:
        return notifier.goToToDoPage();
      case 3:
        return notifier.goToMusicPlayerPage();
    }
  }
}
