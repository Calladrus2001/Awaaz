import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sih_projectx/controllers/EpisodeController.dart';
import 'package:sih_projectx/views/screens/HomeScreen.dart';

import '../data/models/Choice.dart';
import '../data/models/Story.dart';

class StoryController extends GetxController {
  List<Story> _storyData = [];
  RxInt storyNumber = 0.obs;
  EpisodeController episodeController = Get.find();

  int getStoryNumber() {
    return GetStorage().read("storyNumber") ?? storyNumber.value;
  }

  Story getStoryData() {
    return (_storyData[storyNumber.value]);
  }

  bool hasChoices() {
    return _storyData[storyNumber.value].choice1 != null || _storyData[storyNumber.value].choice2 != null;
  }

  void restart() {
    storyNumber.value = 0;
  }

  Future<void> getNextStory(Story story, Choice? choice) async {
    if (story.isEndOfEpisode) {
      episodeController.markCurrentEpisodeComplete();
      Get.offAll(const HomeScreen());
    }
    else {
      if (choice != null) {
        storyNumber.value = choice.nextStory;
      } else {
        storyNumber.value = story.nextStory;
      }
    }

    GetStorage().write("storyNumber", storyNumber.value);
  }

  Future<void> loadStory() async {
    int currentEpisode = await episodeController.getEpisodeNumber();
    //TODO: request to backend for the story data for the episode number
    _storyData = [];
  }

}