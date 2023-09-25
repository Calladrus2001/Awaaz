import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sih_projectx/controllers/EpisodeController.dart';
import 'package:sih_projectx/controllers/StoryController.dart';
import 'package:sih_projectx/data/models/choice.dart';
import 'package:sih_projectx/views/widgets/ChoiceWidget.dart';
import 'package:sih_projectx/views/widgets/StoryWidget.dart';

import '../../data/models/Story.dart';

class GameScreen extends StatelessWidget {
  EpisodeController episodeController = Get.find();
  StoryController storyController = Get.find();

  @override
  Widget build(BuildContext context) {
    var currentStory = Story(
        storyTitle:
            "This is a new story, only a test, the real one will be there soon enuf",
        background: "assets/images/sample/Balcony.png",
        choice1: Choice(text: "dummy choice 1", nextStory: 0),
        choice2: Choice(text: "dummy choice 2", nextStory: 0),
        characterImage: "assets/images/sample/Max_sleepy.png",
        nextStory: 0);

    Choice? choice1 = currentStory.choice1;
    Choice? choice2 = currentStory.choice2;
    return Scaffold(
      body: Stack(
        children: [
          //TODO: add the shifting animation logic
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(currentStory.background),
                    fit: BoxFit.fill)),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 230,
                  child: Image(
                    image: AssetImage(currentStory.characterImage),
                  ),
                ),
                StoryWidget(
                    story: currentStory.storyTitle, containsChoices: true),
                const SizedBox(height: 10),
                if (choice1 != null) GestureDetector(
                    child: ChoiceWidget(choice: choice1),
                  onTap: (){
                      //TODO: follow choice1's next story
                  },
                ),
                const SizedBox(height: 10),
                if (choice2 != null) GestureDetector(
                  child: ChoiceWidget(choice: choice2),
                  onTap: (){
                    //TODO: follow choice2's next story
                  },
                ),
              ],
            ),
          ))
          //TODO: Add story widget
        ],
      ),
    );
  }
}
