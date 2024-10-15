import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/value_object/to_do_list.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/empty_list_widget.dart';
import 'music_player_notifier.dart';
import 'music_player_state.dart';

@RoutePage()
class MusicPlayerPage extends ConsumerStatefulWidget {
  const MusicPlayerPage({
    super.key,
  });

  @override
  ConsumerState<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends ConsumerState<MusicPlayerPage> {
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
    MusicPlayerState state = ref.watch(musicPlayerStateNotifierProvider);
    MusicPlayerNotifier notifier =
        ref.read(musicPlayerStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_music_player_title),
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
  required MusicPlayerState state,
  required Size size,
}) {
  return Column(
    children: [],
  );
}
