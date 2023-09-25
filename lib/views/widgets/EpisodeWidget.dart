import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_projectx/views/screens/LoadingScreen.dart';

Widget episodeWidget(int idx, String name, bool isComplete, bool isLocked) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: AssetImage('assets/images/episodeTitleImages/$idx.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(

        children: [
          Container(
            height: 380, // Adjust as needed
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const Expanded(child: SizedBox(height: 1)),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ),
          if (isComplete)
            const Positioned(
              top: 10.0,
              right: 10.0,
              child: Icon(
                Icons.check_circle,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          if (isLocked)
            const Positioned(
              top: 10.0,
              right: 10.0,
              child: Icon(
                Icons.lock,
                color: Colors.white,
                size: 30.0,
              ),
            ),
        ],
      ),
    ),
    onTap: () {
      if (isComplete) {
        Get.snackbar("ProjectX", "You have already completed this episode", colorText: Colors.white);
      } else if (isLocked) {
        Get.snackbar("ProjectX", "This episode is locked, complete the previous episodes first.", colorText: Colors.white);
      } else {
        Get.to(()=> LoadingScreen());
      }
    },
  );
}
