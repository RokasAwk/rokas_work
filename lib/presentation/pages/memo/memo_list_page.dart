import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/domain/entity/memo.dart';
import 'package:rokas_work/domain/value_object/memo_filter_type.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';
import 'package:rokas_work/presentation/utils/memo_filter_type_extension.dart';

import '../../../utils/toast_utils.dart';
import '../../di_providers/di_provider.dart';
import '../../routers/router.dart';
import '../../services/firestore_service/firestore_memo_service.dart';
import '../widgets/bottom_sheet_tile.dart';
import '../widgets/empty_list_widget.dart';
import '../widgets/filter_button.dart';
import '../widgets/icon_dialog.dart';
import '../widgets/title_bottom_sheet.dart';
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
  late final AppRouter appRouter;

  @override
  void initState() {
    MemoListNotifier notifier =
        ref.read(memoListStateNotifierProvider.notifier);
    appRouter = ref.read(routerProvider);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      FirestoreMemoService().listenToData();
      List dataList = await FirestoreMemoService().getData();

      notifier.updateMemoList(memoList: dataList);
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
        title: Text(L10n.tr.page_memo_title),
        leading: const BackButton(),
        actions: [
          IconButton(
              onPressed: () => notifier.goToAddMemoPage(null),
              icon: const FaIcon(
                FontAwesomeIcons.plus,
              ))
        ],
      ),
      body: _buildBody(
        state: state,
        notifier: notifier,
        size: size,
        title: '排序',
        selectedType: state.filterType,
        onItemTap: (value) async {
          await appRouter.pop();

          if (state.filterType == value) {
            return;
          }

          notifier.onChangeMemoFilterType(
            type: value,
          );
        },
      ),
    );
  }

  Widget _buildBody({
    required MemoListState state,
    required MemoListNotifier notifier,
    required Size size,
    required String title,
    MemoFilterType? selectedType,
    void Function(MemoFilterType value)? onItemTap,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterButton(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    backgroundColor: AppColors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                    ),
                    builder: (context) {
                      var types = MemoFilterType.values.toList();

                      return TitleBottomSheet(
                          title: title,
                          withCloseButton: true,
                          isShowCancelButton: false,
                          onCloseButtonPressed: () => appRouter.pop(),
                          body: ListView.builder(
                              padding: const EdgeInsets.all(16),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return BottomSheetTile(
                                  text: types[index].text(),
                                  onTapped: () => onItemTap?.call(types[index]),
                                  trailing: Visibility(
                                    visible: selectedType == types[index]
                                        ? true
                                        : false,
                                    child: const FaIcon(
                                      FontAwesomeIcons.check,
                                      color: AppColors.blueGray,
                                    ),
                                  ),
                                );
                              }));
                    });
              },
              filterTitle:
                  L10n.tr.page_memo_filter_type_result(state.filterType.text()),
            ),
            const SizedBox(height: 8),
            Expanded(
                child: state.memoList.isEmpty
                    ? _buildEmptyList()
                    : _buildListView(
                        state: state,
                        size: size,
                        notifier: notifier,
                      )),
          ],
        ));
  }

  Widget _buildListView({
    required MemoListState state,
    required Size size,
    required MemoListNotifier notifier,
  }) =>
      ListView.separated(
        itemCount: state.memoList.length,
        itemBuilder: (context, index) {
          return _buildItemTile(
            size: size,
            item: state.memoList[index],
            notifier: notifier,
            state: state,
            index: index,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 16);
        },
      );

  Widget _buildEmptyList() => const EmptyListWidget();

  Widget _buildItemTile({
    required Size size,
    required Memo item,
    required MemoListNotifier notifier,
    required MemoListState state,
    required int index,
  }) {
    return Container(
        width: size.width,
        height: size.height * 0.23,
        decoration: BoxDecoration(
            color: AppColors.yellow,
            border: Border.all(
              color: AppColors.black_50,
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildMemoDataItem(
            meomItem: item,
            size: size,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(item.createdTime.toDateTimeString()),
              ),
              Row(children: [
                IconButton(
                    onPressed: () {
                      ToastUtils.showCustomDialog(_buildConfirmEditMemoDialog(
                        notifier: notifier,
                        item: item,
                      ));
                    },
                    icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      ToastUtils.showCustomDialog(_buildConfirmPinMemoDialog(
                        state: state,
                        notifier: notifier,
                        index: index,
                      ));
                    },
                    icon: const Icon(Icons.push_pin)),
                IconButton(
                    onPressed: () {
                      ToastUtils.showCustomDialog(_buildConfirmDelMemoDialog(
                        notifier: notifier,
                        memoId: item.id,
                      ));
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.trash,
                      size: 20,
                    ))
              ])
            ],
          ),
        ]));
  }

  Widget _buildMemoDataItem({
    required Memo meomItem,
    required Size size,
  }) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    meomItem.title,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
                Divider(
                  color: AppColors.black_50,
                  thickness: 1,
                ),
                if (meomItem.body != null) ...[
                  SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        meomItem.body!,
                        overflow: TextOverflow.clip,
                        maxLines: 4,
                      )),
                ]
              ],
            )));
  }

  Widget _buildConfirmDelMemoDialog({
    required MemoListNotifier notifier,
    required int memoId,
  }) {
    return IconDialog.warning(
        message: L10n.tr.common_del_hint,
        onCancel: () => appRouter.pop(),
        onConfirm: () async {
          try {
            notifier.deleteMemo(memoId: memoId);

            ToastUtils.showToast(L10n.tr.common_success);

            List dataList = await FirestoreMemoService().getData();
            notifier.updateMemoList(memoList: dataList);
            appRouter.pop();
          } catch (e) {
            print('Error: delete memo error $e');
            ToastUtils.showToast(L10n.tr.common_fail);
          }
        });
  }

  Widget _buildConfirmEditMemoDialog({
    required MemoListNotifier notifier,
    required Memo item,
  }) {
    return IconDialog.warning(
        message: L10n.tr.common_edit_hint,
        onCancel: () => appRouter.pop(),
        onConfirm: () {
          notifier.goToAddMemoPage(item);
          appRouter.pop();
        });
  }

  Widget _buildConfirmPinMemoDialog({
    required MemoListState state,
    required MemoListNotifier notifier,
    required int index,
  }) {
    return IconDialog.warning(
        message: L10n.tr.common_pin_hint,
        onCancel: () => appRouter.pop(),
        onConfirm: () async {
          try {
            Memo tempMemo = state.memoList[index];
            List newMemoList = [];
            newMemoList.addAll(state.memoList);
            newMemoList.removeAt(index);
            newMemoList.insert(0, tempMemo);

            notifier.updateMemoList(memoList: newMemoList);
            appRouter.pop();
          } catch (e) {
            print('Error: delete memo error $e');
            ToastUtils.showToast(L10n.tr.common_fail);
          }
        });
  }
}
