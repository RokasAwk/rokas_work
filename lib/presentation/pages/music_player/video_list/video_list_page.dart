import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/primary_button.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../di_providers/di_provider.dart';
import '../music_player_state.dart';

@RoutePage()
class VideoListPage extends ConsumerStatefulWidget {
  const VideoListPage({
    super.key,
  });

  @override
  ConsumerState<VideoListPage> createState() => _VideoListPageState();
}

class _VideoListPageState extends ConsumerState<VideoListPage> {
  var size;

  late List<YoutubePlayerController> _controllerList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    MusicPlayerState state = ref.watch(musicPlayerStateNotifierProvider);
    _controllerList = List.generate(
        state.videoList.length,
        (int index) =>
            YoutubePlayerController(initialVideoId: state.videoList[index]));

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_video_list_title),
        leading: const BackButton(),
      ),
      body: _buildBody(
        state: state,
        size: size,
      ),
    );
  }

  Widget _buildBody({
    required MusicPlayerState state,
    required Size size,
  }) {
    return _buildVideoList(state: state);
  }

  Widget _buildVideoList({
    required MusicPlayerState state,
  }) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Column(children: [
            YoutubePlayer(
              controller: _controllerList[index],
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
            Text(
              _controllerList[index].metadata.title,
              style: AppTextStyles.appW600Primary,
            )
          ]);
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: _controllerList.length);
  }

  Widget get _space => const SizedBox(height: 10);

  Widget _loadButton() {
    return PrimaryButton(
      title: L10n.tr.page_music_player_load_button,
      onPressed: () => null,
    );
  }
}
