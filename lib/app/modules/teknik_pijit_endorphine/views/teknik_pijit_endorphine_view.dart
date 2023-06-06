import 'package:flutter/material.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/config/config.dart';
import 'package:flutter_teman_laktasi/constants/constants.dart';

import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../controllers/teknik_pijit_endorphine_controller.dart';

class TeknikPijitEndorphineView
    extends GetView<TeknikPijitEndorphineController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teknik Pijit Endorphin'),
        centerTitle: true,
      ),
      body: Center(
        child: YoutubePlayer(
          controller: controller.youtubeC,
          showVideoProgressIndicator: true,
          progressColors: ProgressBarColors(
            backgroundColor: kPrimaryColor,
            bufferedColor: kSecondaryColor,
          ),
          progressIndicatorColor: kPrimaryColor,
        ),
      ),
    );
  }
}
