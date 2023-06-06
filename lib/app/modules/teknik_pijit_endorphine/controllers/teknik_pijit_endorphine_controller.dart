import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TeknikPijitEndorphineController extends GetxController {
  late YoutubePlayerController youtubeC;

  final RxBool _isPlaying = false.obs;

  bool get isPlaying => _isPlaying.value;

  @override
  void onInit() {
    youtubeC = YoutubePlayerController(
      initialVideoId: '0WqAjwi-NJI',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    )..addListener(listener);
    super.onInit();
  }

  @override
  void onClose() {
    youtubeC.dispose();
    super.onClose();
  }

  void listener() {
    if (youtubeC.value.isPlaying != isPlaying) {
      _isPlaying.value = youtubeC.value.isPlaying;
    }
  }

  void playPause() {
    if (isPlaying) {
      youtubeC.pause();
    } else {
      youtubeC.play();
    }
  }
}
