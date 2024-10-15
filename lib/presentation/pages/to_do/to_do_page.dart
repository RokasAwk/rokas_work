import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/value_object/to_do_list.dart';
import 'package:rokas_work/l10n/l10n.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/empty_list_widget.dart';
import 'to_do_notifier.dart';
import 'to_do_state.dart';

@RoutePage()
class ToDoPage extends ConsumerStatefulWidget {
  const ToDoPage({
    super.key,
  });

  @override
  ConsumerState<ToDoPage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<ToDoPage> {
  var size;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    ToDoState state = ref.watch(toDoStateNotifierProvider);
    ToDoNotifier notifier = ref.read(toDoStateNotifierProvider.notifier);

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
  required ToDoState state,
  required Size size,
}) {
  return Column(
    children: [
      Expanded(
          child: state.toDoList.isEmpty
              ? _buildEmptyList()
              : _buildListView(
                  state: state,
                  size: size,
                )),
    ],
  );
}

Widget _buildListView({
  required ToDoState state,
  required Size size,
}) =>
    ListView.builder(
      itemCount: state.toDoList.length,
      itemBuilder: (context, index) {
        return _buildItemTile(
          size: size,
          item: state.toDoList[index],
        );
      },
    );

Widget _buildEmptyList() => const EmptyListWidget();

Widget _buildItemTile({
  required Size size,
  required ToDoList item,
}) {
  return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
