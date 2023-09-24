import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_projectx/views/widgets/EpisodeWidget.dart';

import '../../controllers/EpisodeController.dart';

class HomeScreen extends StatelessWidget {
  EpisodeController episodeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
            shrinkWrap: true,
            itemCount: episodeController.episodeStates.value.length,
              itemBuilder: (context, int idx) {
              EpisodeState current = episodeController.episodeStates.value[idx];
              return episodeWidget(idx+1, "episode name here", current.isCompleted, current.isLocked);
          }),
        ),
      ),
    );
  }
}
