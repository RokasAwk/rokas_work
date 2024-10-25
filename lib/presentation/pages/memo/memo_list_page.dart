import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/entity/momo.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_service.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/empty_list_widget.dart';
import 'memo_list_notifier.dart';
import 'memo_list_state.dart';

@RoutePage()
class MemoListPage extends ConsumerStatefulWidget {
  const MemoListPage({
    super.key,
  });

  @override
  ConsumerState<MemoListPage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<MemoListPage> {
  var size;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    FirestoreServiceImpl().listenToMemoData();
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
        title: Text(L10n.tr.page_to_do_title),
        leading: const BackButton(),
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
      // Expanded(
      //     child: state.memoList.isEmpty
      //         ? _buildEmptyList()
      //         : _buildListView(
      //             state: state,
      //             size: size,
      //           )),
      TextButton(
          onPressed: () {
            FirestoreServiceImpl().getMemoData();
          },
          child: const Text('add')),
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
  return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ],
      ));
}
