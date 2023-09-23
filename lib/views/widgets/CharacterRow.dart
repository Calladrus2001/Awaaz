import 'package:flutter/material.dart';

class CharacterRow extends StatelessWidget {
  final int episodeNumber;
  final String image;
  final String imageName;
  final bool isMainCharacter;

  const CharacterRow({
    Key? key,
    required this.episodeNumber,
    required this.image,
    required this.imageName,
    required this.isMainCharacter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isMainCharacter) Expanded(
            flex: 1,
            child: Container()
        ),
        Expanded(
            flex: 1,
            child: Image.asset("assets/episode$episodeNumber/$imageName")
        ),
        if (isMainCharacter) Expanded(
            flex: 1,
            child: Container()
        ),
      ],
    );
  }
}
