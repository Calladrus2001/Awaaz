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
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Episodes", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800
                )),
                ListView.builder(
                  physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
                  shrinkWrap: true,
                  itemCount: episodeController.episodeStates.value.length,
                    itemBuilder: (context, int idx) {
                    EpisodeState current = episodeController.episodeStates.value[idx];
                    return episodeWidget(idx+1, "episode name here", current.isCompleted, current.isLocked);
                }),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("More episodes coming soon", textAlign: TextAlign.center),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
