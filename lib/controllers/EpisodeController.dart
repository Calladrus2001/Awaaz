import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EpisodeController extends GetxController {
  int episodes = 10;
  RxInt _currentEpisode = 0.obs;
  Rx<List<EpisodeState>> episodeStates = Rx<List<EpisodeState>>(<EpisodeState>[]);

  @override
  void onInit() async {
    await _fetchStates();
    super.onInit();
  }

  Future<void> _fetchStates() async {
    _currentEpisode.value = GetStorage().read("currentEpisode") ?? await getEpisodeNumber();
    GetStorage().write("currentEpisode", _currentEpisode.value);

    for (int i = 0; i < episodes; i++) {
      if (i == _currentEpisode.value) {
        episodeStates.value.add(EpisodeState(isCompleted: false, isLocked: false));
      }
      if (i < _currentEpisode.value) {
        episodeStates.value.add(EpisodeState(isCompleted: true, isLocked: false));
      }
      else {
        episodeStates.value.add(EpisodeState(isCompleted: false, isLocked: true));
      }
    }
  }

  Future<int> getEpisodeNumber() async {
    //TODO: fetch episodeNumber from backend if it does not exist locally
    return 0;
  }

  Future<void> markCurrentEpisodeComplete() async {
    episodeStates.value[_currentEpisode.value] = EpisodeState(isCompleted: true, isLocked: false);
    _currentEpisode.value += 1;
    if (_currentEpisode < episodes) {
      episodeStates.value[_currentEpisode.value] = EpisodeState(isCompleted: false, isLocked: false);
    }
    GetStorage().write("storyNumber", 0);
    //TODO: get instance of Network Service and update db
  }
}

class EpisodeState {
  bool isCompleted;
  bool isLocked;

  EpisodeState({
    required this.isCompleted,
    required this.isLocked
  });
}