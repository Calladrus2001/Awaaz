import 'choice.dart';

class Story {
  String storyTitle;
  String background;
  Choice? choice1;
  Choice? choice2;
  String characterImage;
  int nextStory;
  bool isMainCharacter;
  bool isFadeOut;
  bool isFadeIn;
  bool isEndOfEpisode;
  String bonusText;
  String achievementText;
  bool loadAd;
  bool showAd;
  Story({
    required this.storyTitle,
    required this.background,
    required this.choice1,
    required this.choice2,
    required this.characterImage,
    required this.nextStory,
    this.isMainCharacter = true,
    this.isFadeOut = false,
    this.isFadeIn = false,
    this.isEndOfEpisode = false,
    this.bonusText = "",
    this.achievementText = "",
    this.loadAd = false,
    this.showAd = false,
  });

  @override
  String toString() {
    return "storyTitle: $storyTitle\n"
        "background: $background\n"
        "choice1: $choice1\n"
        "choice2: $choice2\n"
        "characterImage: $characterImage\n"
        "nextStory: $nextStory\n"
        "isMainCharacter: $isMainCharacter\n"
        "isFadeOut: $isFadeOut\n"
        "isFadeIn: $isFadeIn\n"
        "isEndOfEpisode: $isEndOfEpisode\n"
        "storyTitle: $storyTitle\n";
  }
}
