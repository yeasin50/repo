import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '../widgets/widgets.dart';

class MediumLevelScreen extends StatelessWidget {
  MediumLevelScreen({Key? key}) : super(key: key);

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
                    "Flutter is developed by",
                    style: AppTextStyle.header,
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "Microsoft",
                    callback: () {
                      print("Microsoft");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "Facebook",
                    callback: () {
                      print("Facebook");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "Google",
                    callback: () {
                      print("Google");
                    },
                  ),
                  gap,
                  CustomButton(
                    width: maxWidth,
                    text: "IBM",
                    callback: () {
                      print("IBM");
                    },
                  ),
                  gap,
                  Image.asset(
                    AppAssetImage.levelMediumScreen,
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
