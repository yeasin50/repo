import 'package:flutter/material.dart';
import 'package:second_course_app/constants/color_pallete.dart';

import 'screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: AppColorPallete.background,
      ),
      home: HardLevelScreen(),
    );
  }
}
