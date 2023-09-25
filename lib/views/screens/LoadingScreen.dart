import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_projectx/controllers/StoryController.dart';

import 'GameScreen.dart';

class LoadingScreen extends StatelessWidget {
  StoryController storyController = Get.put(StoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade200,
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircularProgressIndicator(color: Colors.white, strokeWidth: 6),
            const SizedBox(height: 18),
            Text(storyController.loadingMessage.value, style: const TextStyle(color: Colors.white)),
            const SizedBox(width: double.infinity)
          ],
        ),
        onTap: (){
          Get.to(()=>GameScreen());
        },
      ),
    );
  }
}
