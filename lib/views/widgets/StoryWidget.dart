import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String story;
  final bool containsChoices;

  const StoryWidget({Key? key, required this.story, required this.containsChoices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return story.trim() == "" ? const SizedBox.shrink() : Material(
      elevation: 100,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Container(
        height: story.length < 35 ? 85 : 110,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        decoration: BoxDecoration(
            color: containsChoices ? const Color(0xff113a49) : const Color(0xffeae7e2),
            borderRadius: const BorderRadius.all(Radius.circular(5))
        ),
        child: Center(
          child: AnimatedTextKit(
            key: ValueKey<String>(story),
            animatedTexts: [
              TypewriterAnimatedText(
                story,
                textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: containsChoices ? FontWeight.w400 : FontWeight.w500,
                    color: containsChoices ? const Color(0xffeae7e2) : const Color(0xff113a49)
                ),
                cursor: "",
                speed: const Duration(milliseconds: 15),
              )
            ],
            isRepeatingAnimation: false,
          ),
        ),
      ),
    );
  }
}
