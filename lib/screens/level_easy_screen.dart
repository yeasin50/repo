import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '../widgets/widgets.dart';

class EasyLevelScreen extends StatelessWidget {
  EasyLevelScreen({Key? key}) : super(key: key);

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
                    "Flutter is compatible with:",
                    style: AppTextStyle.header,
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "IOS",
                    callback: () {
                      print("Easy");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "ANDRIOD",
                    callback: () {
                      print("ANDRIOD");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "BOTH",
                    callback: () {
                      print("hard");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "NONE",
                    callback: () {
                      print("none");
                    },
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
