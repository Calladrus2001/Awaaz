import '../models/choice.dart';

class Story {
  String storyTitle;
  String background;
  Choice? choice1;
  Choice? choice2;
  String characterImage;
  int nextStory;
  bool isMainCharacter;
  bool isEndOfEpisode;
  String bonusText;

  Story({
    required this.storyTitle,
    required this.background,
    required this.choice1,
    required this.choice2,
    required this.characterImage,
    required this.nextStory,
    this.isMainCharacter = true,
    this.isEndOfEpisode = false,
    this.bonusText = "",
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
        "isEndOfEpisode: $isEndOfEpisode\n"
        "storyTitle: $storyTitle\n";
    }
}
