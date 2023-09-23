class Choice {
  String text;
  bool doesRequireDiamonds;
  int diamondsRequired;
  int nextStory;
  Choice({required this.text, this.doesRequireDiamonds=false, this.diamondsRequired=0, required this.nextStory});
}