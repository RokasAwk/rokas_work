import 'package:auto_route/annotations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/domain/entity/momo.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';

import '../../di_providers/di_provider.dart';
import '../../services/firestore_service/firestore_memo_service.dart';
import '../widgets/empty_list_widget.dart';
import 'memo_list_notifier.dart';
import 'memo_list_state.dart';

@RoutePage()
class MemoListPage extends ConsumerStatefulWidget {
  const MemoListPage({
    super.key,
  });

  @override
  ConsumerState<MemoListPage> createState() => _MemoListPageState();
}

class _MemoListPageState extends ConsumerState<MemoListPage> {
  var size;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      FirestoreMemoService().listenToData();
      await FirestoreMemoService().getData();
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
    MemoListState state = ref.watch(memoListStateNotifierProvider);
    MemoListNotifier notifier =
        ref.read(memoListStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_momo_title),
        leading: const BackButton(),
        actions: [
          IconButton(
              onPressed: () => notifier.goToAddMemoPage(),
              icon: const FaIcon(
                FontAwesomeIcons.plus,
              ))
        ],
      ),
      body: _buildBody(
        state: state,
        size: size,
      ),
    );
  }
}

Widget _buildBody({
  required MemoListState state,
  required Size size,
}) {
  return Column(
    children: [
      Expanded(
          child: state.memoList.isEmpty
              ? _buildEmptyList()
              : _buildListView(
                  state: state,
                  size: size,
                )),
    ],
  );
}

Widget _buildListView({
  required MemoListState state,
  required Size size,
}) =>
    ListView.builder(
      itemCount: state.memoList.length,
      itemBuilder: (context, index) {
        return _buildItemTile(
          size: size,
          item: state.memoList[index],
        );
      },
    );

Widget _buildEmptyList() => const EmptyListWidget();

Widget _buildItemTile({
  required Size size,
  required Memo item,
}) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
          width: size.width,
          height: size.height * 0.2,
          decoration: BoxDecoration(
              color: AppColors.yellow,
              border: Border.all(
                color: AppColors.black_50,
              )),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      FirestoreMemoService().deleteData("memo_${item.id}");
                    },
                    icon: const FaIcon(FontAwesomeIcons.trash))
              ],
            ),
          ])));
}
