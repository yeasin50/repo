import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '../widgets/widgets.dart';

class HardLevelScreen extends StatelessWidget {
  HardLevelScreen({Key? key}) : super(key: key);

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
                    "Without the main() function, we cannot write any program on Flutter?",
                    style: AppTextStyle.header,
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "True",
                    callback: () {
                      print("True");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "False",
                    callback: () {
                      print("False");
                    },
                  ),
                  gap,
                  gap,
                  Image.asset(
                    AppAssetImage.levelHardScreen,
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
