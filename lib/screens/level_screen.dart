import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '../widgets/widgets.dart';

class LevelScreen extends StatelessWidget {
  LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          final maxWidth = constraints.maxWidth * .6;

          final gap = SizedBox(
            height: constraints.maxHeight * .05,
          );
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: maxWidth,
                maxWidth: maxWidth,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Choose your Level",
                    style: AppTextStyle.header,
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "Easy",
                    callback: () {
                      print("Easy");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "Medium",
                    callback: () {
                      print("medium");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "Hard",
                    callback: () {
                      print("hard");
                    },
                  ),
                  gap,
                  Image.asset(
                    AppAssetImage.homeScreen,
                    width: maxWidth,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
