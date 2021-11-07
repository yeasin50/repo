import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final playerNameController = TextEditingController();
  final playerEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => Center(
            child: ConstrainedBox(
              constraints: BoxConstraints.loose(
                Size.fromWidth(
                  constraints.maxWidth * .6,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Quiz App",
                    style: AppTextStyle.header,
                  ),
                  SizedBox(
                    height: itemSpace,
                  ),
                  CustomInputFiled(
                    hintText: "Player Name",
                    controller: playerNameController,
                  ),
                  SizedBox(
                    height: itemSpace,
                  ),
                  CustomInputFiled(
                    hintText: "Email ID",
                    controller: playerEmailController,
                  ),
                  SizedBox(
                    height: itemSpace,
                  ),
                  CustomButton.homePage(
                    text: "Let’s get started!",
                    callback: () {
                      print("HomeScreenTapped: ");
                    },
                  ),
                  SizedBox(
                    height: itemSpace,
                  ),
                  Image.asset(
                    AppAssetImage.homeScreen,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
