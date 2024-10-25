import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/utils/toast_utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/primary_button.dart';
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
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _isMuted = false;
  bool _isPlayerReady = false;

  final List<String> _playerIdList = [
    '2IeWmLcOSB0',
  ];

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: _playerIdList.first,
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: false,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ))
      ..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;

    // 預先Load第一個影片
    _controller.load(_playerIdList[0]);

    super.initState();
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
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
        actions: [
          IconButton(
            icon: const Icon(Icons.video_library),
            onPressed: notifier.goToVideoListPage,
          ),
        ],
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
    return SingleChildScrollView(
      child: player(controller: _controller),
    );
  }

  Widget player({
    required YoutubePlayerController controller,
  }) {
    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        topActions: <Widget>[
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {
              print('Settings Tapped!');
            },
          ),
        ],
        onReady: () {
          _isPlayerReady = true;
        },
        onEnded: (data) {
          _controller.load(_playerIdList[
              (_playerIdList.indexOf(data.videoId) + 1) %
                  _playerIdList.length]);
          ToastUtils.showToast('Next Video Started!');
        },
      ),
      builder: (context, player) => SizedBox(
          height: size.height,
          child: ListView(
            children: [
              player,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _space,
                    _text(L10n.tr.page_music_player_video_title,
                        _videoMetaData.title),
                    _space,
                    _text(L10n.tr.page_music_player_video_channel,
                        _videoMetaData.author),
                    _space,
                    _text(
                      L10n.tr.page_music_player_video_quality,
                      _controller.value.playbackQuality ?? '',
                    ),
                    _space,
                    _text(
                      L10n.tr.page_music_player_video_speed,
                      '${_controller.value.playbackRate}x  ',
                    ),
                    _space,
                    TextField(
                      enabled: _isPlayerReady,
                      controller: _idController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: L10n.tr.page_music_player_enter_link_hint,
                        fillColor: AppColors.blueGrey_10,
                        filled: true,
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: AppColors.blueGray,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () => _idController.clear(),
                        ),
                      ),
                    ),
                    _space,
                    _loadButton(),
                    _space,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.skip_previous),
                          onPressed: _isPlayerReady
                              ? () => _controller.load(_playerIdList[
                                  (_playerIdList.indexOf(
                                              _controller.metadata.videoId) -
                                          1) %
                                      _playerIdList.length])
                              : null,
                        ),
                        IconButton(
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                          ),
                          onPressed: _isPlayerReady
                              ? () {
                                  _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play();
                                  setState(() {});
                                }
                              : null,
                        ),
                        IconButton(
                          icon: Icon(
                              _isMuted ? Icons.volume_off : Icons.volume_up),
                          onPressed: _isPlayerReady
                              ? () {
                                  _isMuted
                                      ? _controller.unMute()
                                      : _controller.mute();
                                  setState(() {
                                    _isMuted = !_isMuted;
                                  });
                                }
                              : null,
                        ),
                        FullScreenButton(
                          controller: _controller,
                          color: AppColors.blueGray,
                        ),
                        IconButton(
                          icon: const Icon(Icons.skip_next),
                          onPressed: _isPlayerReady
                              ? () => _controller.load(_playerIdList[
                                  (_playerIdList.indexOf(
                                              _controller.metadata.videoId) +
                                          1) %
                                      _playerIdList.length])
                              : null,
                        ),
                      ],
                    ),
                    _space,
                    Row(
                      children: <Widget>[
                        Text(
                          L10n.tr.page_music_player_video_volume,
                          style: const TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Expanded(
                          child: Slider(
                            inactiveColor: AppColors.black_50,
                            activeColor: AppColors.blueGray,
                            value: _volume,
                            min: 0.0,
                            max: 100.0,
                            divisions: 10,
                            label: '${(_volume).round()}',
                            onChanged: _isPlayerReady
                                ? (value) {
                                    setState(() {
                                      _volume = value;
                                    });
                                    _controller.setVolume(_volume.round());
                                  }
                                : null,
                          ),
                        ),
                      ],
                    ),
                    _space,
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: _getStateColor(_playerState),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _playerState.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: const TextStyle(
          color: AppColors.blueGray,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value,
            style: const TextStyle(
              color: AppColors.blueGray,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Color _getStateColor(PlayerState state) {
    switch (state) {
      case PlayerState.unStarted:
      case PlayerState.ended:
        return AppColors.r_400;
      case PlayerState.playing:
        return AppColors.blueGray;
      case PlayerState.paused:
      case PlayerState.buffering:
        return AppColors.yellow;

      case PlayerState.unknown:
      case PlayerState.cued:
      default:
        return AppColors.neutral_300;
    }
  }

  Widget get _space => const SizedBox(height: 10);

  Widget _loadButton() {
    return PrimaryButton(
      title: L10n.tr.page_music_player_load_button,
      onPressed: () => _isPlayerReady
          ? () {
              if (_idController.text.isNotEmpty) {
                var id = YoutubePlayer.convertUrlToId(
                      _idController.text,
                    ) ??
                    '';
                _controller.load(id);

                FocusScope.of(context).requestFocus(FocusNode());
              } else {
                ToastUtils.showToast('Source can\'t be empty!');
              }
            }
          : null,
    );
  }
}
