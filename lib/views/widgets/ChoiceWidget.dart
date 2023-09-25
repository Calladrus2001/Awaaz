import 'package:flutter/material.dart';

import '../../data/models/choice.dart';

class ChoiceWidget extends StatelessWidget {
  final Choice choice;

  const ChoiceWidget({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 100,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        decoration: const BoxDecoration(
            color: Color(0xffeae7e2),
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 5,
              child: Text(
                choice.text,
                style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff113a49)
                ),
              ),
            ),
            if (choice.doesRequireDiamonds)
              const SizedBox(width: 10,),
            if (choice.doesRequireDiamonds)
              Expanded(
                  flex: 1,
                  child: Text(
                    "💎 ${choice.diamondsRequired}",
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54
                    ),
                  )
              )
          ],
        ),
      ),
    );
  }
}
