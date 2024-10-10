import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
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
                const DevelopedByWidget(),
              ],
            ),
          )),
    );
  }
}

Widget _buildDrawerBth() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.sort),
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
        const Icon(
          Icons.notifications,
          color: AppColors.black,
        ),
        const SizedBox(width: 5),
        Expanded(
            child: Text(
          L10n.tr.page_home_noify_title,
        ))
      ],
    ),
  );
}

Widget _buildDateTimeSection({
  required HomeState state,
}) {
  return Text(state.currentTime.toDateTimeString());
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
      _buildSubPageBtn(
        page: L10n.tr.page_to_do_title,
        onPressed: () => notifier.goToToDoPage(),
      )
      //  _buildGridSection()
    ],
  );
}

// Widget _buildGridSection() {
//   return GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder);
// }

Widget _buildSubPageBtn({
  required String page,
  required Function() onPressed,
}) {
  return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        page,
        style: const TextStyle(fontSize: 16),
      ));
}
