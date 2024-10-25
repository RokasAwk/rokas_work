import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/form_field_with_title.dart';
import 'package:rokas_work/presentation/pages/widgets/icon_dialog.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_memo_service.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_service.dart';

import '../../../utils/toast_utils.dart';
import '../../di_providers/di_provider.dart';
import '../../routers/router.dart';
import '../../theme/app_colors.dart';
import '../widgets/primary_button.dart';
import 'memo_list_notifier.dart';

@RoutePage()
class AddMemoPage extends ConsumerStatefulWidget {
  const AddMemoPage({
    super.key,
  });

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
        title: Text(L10n.tr.page_add_memo_title),
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
            maxLines: 20,
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
    return PrimaryButton(
      title: L10n.tr.common_add,
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
    );
  }

  Widget _buildConfirmAddMemoDialog({
    required TextEditingController titleController,
    required TextEditingController bodyController,
    required MemoListNotifier notifier,
  }) {
    return IconDialog.warning(
        message: L10n.tr.common_add_hint,
        onCancel: () => appRouter.pop(),
        onConfirm: () async {
          try {
            notifier.addMemo(
              title: titleController.text,
              body: bodyController.text,
            );
            ToastUtils.showToast(L10n.tr.common_success);
          } catch (e) {
            print('Error: Add memo error $e');
            ToastUtils.showToast(L10n.tr.common_fail);
          }
        });
  }
}