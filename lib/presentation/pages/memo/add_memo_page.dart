import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/form_field_with_title.dart';
import 'package:rokas_work/presentation/pages/widgets/icon_dialog.dart';
import '../../../domain/entity/memo.dart';
import '../../../utils/toast_utils.dart';
import '../../di_providers/di_provider.dart';
import '../../routers/router.dart';
import '../../services/firestore_service/firestore_memo_service.dart';
import '../widgets/primary_button.dart';
import 'memo_list_notifier.dart';

@RoutePage()
class AddMemoPage extends ConsumerStatefulWidget {
  const AddMemoPage({
    super.key,
    this.existedMemo,
  });

  final Memo? existedMemo;

  @override
  ConsumerState<AddMemoPage> createState() => _AddMemoPageState();
}

class _AddMemoPageState extends ConsumerState<AddMemoPage> {
  var size;
  late final AppRouter appRouter;
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  void initState() {
    appRouter = ref.read(routerProvider);

    if (widget.existedMemo != null) {
      Memo existedMemo = widget.existedMemo!;
      titleController.text = existedMemo.title;

      if (existedMemo.body != null) {
        bodyController.text = existedMemo.body!;
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    MemoListNotifier notifier =
        ref.read(memoListStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.existedMemo == null
            ? L10n.tr.page_add_memo_title
            : L10n.tr.page_add_memo_edit_title),
        leading: const BackButton(),
      ),
      body: _buildBody(
        notifier: notifier,
        size: size,
      ),
    );
  }

  Widget _buildBody({
    required MemoListNotifier notifier,
    required Size size,
  }) {
    return Column(
      children: [
        Expanded(child: _buildForm()),
        const SizedBox(height: 16),
        _addButton(
            titleController: titleController,
            bodyController: bodyController,
            notifier: notifier),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          FormFieldWithTitle(
            titleText: L10n.tr.page_add_memo_add_title,
            hintText: L10n.tr.page_add_memo_add_title_hint,
            controller: titleController,
          ),
          const SizedBox(height: 16),
          FormFieldWithTitle(
            titleText: L10n.tr.page_add_memo_add_body,
            hintText: L10n.tr.page_add_memo_add_body_hint,
            maxLines: 18,
            maxLength: 1000,
            isShowClearIcon: false,
            controller: bodyController,
          ),
        ],
      ),
    );
  }

  Widget _addButton({
    required TextEditingController titleController,
    required TextEditingController bodyController,
    required MemoListNotifier notifier,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: PrimaryButton(
          title: widget.existedMemo == null
              ? L10n.tr.common_add
              : L10n.tr.common_edit,
          onPressed: () {
            if (titleController.text.isNotEmpty) {
              ToastUtils.showCustomDialog(
                _buildConfirmAddMemoDialog(
                    titleController: titleController,
                    bodyController: bodyController,
                    notifier: notifier),
              );
            } else {
              ToastUtils.showToast('Title Empty');
            }
          },
        ));
  }

  Widget _buildConfirmAddMemoDialog({
    required TextEditingController titleController,
    required TextEditingController bodyController,
    required MemoListNotifier notifier,
  }) {
    return IconDialog.warning(
        message: widget.existedMemo == null
            ? L10n.tr.common_add_hint
            : L10n.tr.common_edit_hint,
        onCancel: () => appRouter.pop(),
        onConfirm: () async {
          try {
            if (widget.existedMemo == null) {
              notifier.addMemo(
                title: titleController.text,
                body: bodyController.text,
              );
            } else {
              notifier.editMemo(
                originMemoData: widget.existedMemo!,
                title: titleController.text,
                body: bodyController.text,
              );
            }

            ToastUtils.showToast(L10n.tr.common_success);

            List dataList = await FirestoreMemoService().getData();
            notifier.updateMemoList(memoList: dataList);
            appRouter.back();
          } catch (e) {
            print('Error: Add memo error $e');
            ToastUtils.showToast(L10n.tr.common_fail);
          }
        });
  }
}
