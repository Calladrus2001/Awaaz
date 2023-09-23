import 'package:get/get.dart';

class EpisodeController extends GetxController {
  int episodes = 10;
  RxInt currentEpsiode = 0.obs;
  Rx<List<EpisodeState>> episodeStates = [].obs as Rx<List<EpisodeState>>;

  @override
  void onInit() async {
    await fetchStates();
    super.onInit();
  }

  Future<void> fetchStates() async {
    //TODO: fetch current episode number
    //TODO: declare all further episodes as locked.
  }

  Future<void> markCurrentEpisodeComplete() async {
    currentEpsiode.value += 1;
    //TODO: get instance of Network Service and update db
    //TODO: mark next episode, if exists, unlocked
  }
}

class EpisodeState {
  bool isCompleted = false;
  bool isLocked = true;

  EpisodeState({
    this.isCompleted = false,
    this.isLocked = true,
  });
}